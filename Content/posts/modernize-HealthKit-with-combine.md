---
date: 2021-05-05 23:38
description: Modernize HealthKit with Combine
tags: swift, combine, HealthKit
---
# Modernize HealthKit with combine

HealthKit provides a central repository for health and fitness data on iPhone and Apple Watch. With the user’s permission, apps communicate with the HealthKit store to access and share this data.

Many healthkit methods use a completion model. We will modernize it using the new Combine framework.


## Request Authorization from user with HealthKit and Combine

First write the default requirement code

```swift
// retrive HealthStore
let store = HKHealthStore()
// choose data you want in this example we want coffee
let samplesType: Set<HKSampleType> = [HKObjectType.quantityType(forIdentifier: .dietaryCaffeine)!]

//Healtkit is only available on iOS and WatchOS
guard HKHealthStore.isHealthDataAvailable() else {
    fatalError()
}

store.requestAuthorization(toShare: self.samplesType, read: self.samplesType) { state, error in 
	// completion....
}
```


Now modernize using Combine

```swift
//First create error wrapper
enum HealthError: Error {
    case unavailableOnDevice
    case authorizationRequestError
}

extension HKHealthStore {
    func requestAuthorizationPublisher(toShare typesToShare: Set<HKSampleType>?, read typesToRead: Set<HKObjectType>?) -> Deferred<Future<Bool, Error>> {
    	// Deferred wrap your publisher in another publisher, but doesn't run that function until it is subscribed to.
        Deferred {
            Future { promise in
            	//check Available or promise with failure
                guard HKHealthStore.isHealthDataAvailable() else {
                    promise(.failure(HealthDataError.unavailableOnDevice))
                    return
                }

                self.requestAuthorization(toShare: typesToShare, read: typesToRead) { state, error in
                    guard error == nil else {
                    	// error create promise with failure
                        promise(.failure(error!))
                        return
                    }

                    // state validated
                    if state {
                    	// return success!
                        promise(.success(state))
                    } else {
                    	// authorization, sorry :'(
                        promise(.failure(HealthDataError.authorizationRequestError))
                    }

                }
            }
        }
    }
}

let store = HKHealthStore()
// choose data you want in this example we want coffee
let samplesType: Set<HKSampleType> = [HKObjectType.quantityType(forIdentifier: .dietaryCaffeine)!]

// now you have a publisher
let cancellable = store
	.requestAuthorizationPublisher(toShare: self.samplesType, read: self.samplesType)
    .sink(receiveCompletion: { completion in

    }, receiveValue: { state in
    	// success result!
    })
```

You can tell yourself, so much more code!
But we wrote an extension, it doesn't need to move anymore.
Errors and authorizations are handled in the same call stack and you have the result at the end

## Retrieve data from HKHealthStore
```swift
let sample = HKSampleQuery(sampleType:
	// request dietaryCaffeine
 HKSampleType.quantityType(forIdentifier: .dietaryCaffeine)!,
 // with maximum range value
 predicate: HKQuery.predicateForSamples(withStart: Date.distantPast, end: Date(), options: .strictEndDate),
 // no data limit 
 limit: HKObjectQueryNoLimit,
 sortDescriptors: []) { query, samples, error in
 	//result in this completion...
 }

HKHealthStore().execute(sample)
```

Modernize 

```swift
extension HKHealthStore {
    func subject(for sampleType: HKSampleType) -> AnyPublisher<[HKCategorySample], Error> {
    	//create subject with HKCategorySample
        let subject = PassthroughSubject<[HKCategorySample], Error>()

        //prepare query, some parameter must be moved in func parameter. (this is an example)
        let query = HKSampleQuery(sampleType: sampleType, predicate:HKQuery.predicateForSamples(withStart: Date.distantPast, end: Date(), options: .strictEndDate), limit: HKObjectQueryNoLimit, sortDescriptors: nil) { _, samples, error in

            if let error = error {
            	// send completion error
                subject.send(completion: .failure(error))
            }

            guard let samples = samples as? [HKCategorySample] else {
            	// no data ? finish completion
                subject.send(completion: .finished)
                return
            }

            // we have samples, send!
            subject.send(samples)
            // all data retrived, finished!
            subject.send(completion: .finished)
        }

        //execute the query
        execute(query)

        //return subject
        return subject.eraseToAnyPublisher()
    }
}
```
