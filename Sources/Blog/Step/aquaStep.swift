import Foundation
import Publish

extension PublishingStep where Site == Blog {
    static func aquaStep() -> Self {
        .step(named: "Fetch Image") { context in
            do {
                try context.folder(at: .init("Resources/aqua"))
                    .files
                    .sorted(by: { $0.name > $1.name })
                    .enumerated().forEach { key, file in
                        let imgPath = "/aqua/\(file.name)"
                        context.addItem(.init(
                            path: "\(key)",
                            sectionID: .aqua,
                            metadata: .init(),
                            tags: [],
                            content: Content(
                                title: "",
                                description: "",
                                body: .init(
                                    html: "<img src=\"\(imgPath)\" style=\"width:500px; height:500px;\"/>"),
                                date: file.creationDate!,
                                lastModified: file.modificationDate!,
                                imagePath: .init(imgPath)
                            )
                        )
                        )
                    }
            } catch {}
        }
    }
}
