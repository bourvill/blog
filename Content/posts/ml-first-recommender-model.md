---
date: 2018-03-01 17:11
description: Machine learning your first recommender model
tags: ml 
---
# Machine learning your first recommender model
Apple released a few weeks ago, Turicreate, an open source framework to create easily model for CoreML. 

In this tutorial, you don't need Apple device. This recommender can be used only with python. 

And later used on Apple device after using converter tool.

Machine learning can be used for recommendations, object detection, image classification, image similarity or activity classify for example.

## Recommendation

You can use recommender for suggesting movies, books, recommend purchasing for your user.
Data is the next (?? or already past?) big thing.

You can take a big advantage of data, you need just to be smarter from your concurrent. Imagine you are a retailer with many customers, many products. What product for this user, Top selling? New product? Or just recommendation from other buying data customer? You can push this recommendation in the cart, or send by mail. Just test and analyze. This is not THE response, but it's one.


## The goal of this tutorial

In this tutorial, we will learn how to create a recommender system script. We will train the model. At the end, by giving a user identifier this one would give us a recommendation for movies with a prediction confidence.

## Coding!

First step Install Turi

*All steps are released on Mac. But you can try on Ubuntu for example.*

To train your model Turi requires python, we use pip and virtualenv for this. Open terminal and run

```
sudo easy_install pip
sudo pip install virtualenv
mkdir recommender
cd recommender
```

Create the virtualenv

```
virtualenv venv
source venv/bin/activate
```

You are now in your virtualenv

## Let's install turicreate

```
pip install -U turicreate
```


## Second part? Coding!
Download the dataset, recommender.zip and unzip in the root folder of project.
https://www.dropbox.com/sh/nfmqrhavc67iawc/AABYh_Ukm_Xyu2tMMrUJ4PhWa?dl=0
source of dataset : https://grouplens.org/datasets/movielens/20m/
Now create file build.py

```
#First include module turicreate
import turicreate as tc
#Load the your CSV
ratings = tc.SFrame.read_csv('./ratings.csv')
training_data, validation_data = tc.recommender.util.random_split_by_user(ratings, 'userId', 'movieId')
model = tc.recommender.create(training_data, 'userId', 'movieId')
# Save the model for later use
model.save('recommender.model')
```
Now you can build your model.
```
python build.py
```

After this build, you get your first trained model

## Try your trained model
Now, we write a first recommender script for your trained model.

Create new file recommender.py

```
import turicreate as tc
#load model
model = tc.load_model("recommender.model")
#recommendation for user 1
results = model.recommend(users=['1'])
print(results)
```

You get list of movies recommended for this user

## That's fun and easy isn't it?

With this simple python script, you get a recommendation system. 
Now you can create your own model!

This training method is really simple, but you can be work with more data and more parameter to get a better recommendation.