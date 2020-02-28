# Babylon Ruby Test

## Introduction

Welcome to the babylon Ruby tech test! There are two parts - a coding exercise and a short quiz. Please read this document all the way through.

You will be working on the prototype for our next-generation ecommerce platform. The project has been started by one of our best interns and we expect to deploy it across the world in Q5 2020.

This is a top-secret project. PLEASE DO NOT PUBLISH ANYTHING ON GITHUB! (Or anywhere else.)

So far only some basic functionality is completed. You will be adding some exciting new features. Good luck!

We are looking for clean, extensible and testable code. Feel free to use third-party libraries as you deem appropriate. As the service is not yet live, you are welcome to change the API.

## How to run

    $ bundle install
    $ ruby app.rb

## Run the tests

    $ bundle exec rspec

## Add Features

### Product API

The app currently uses some static product data. In reality, our catalogue is going to be managed by another microservice and accessed via a REST API. A mock API is available for testing:

    $ curl https://api.myjson.com/bins/1gq65r

Please modify the app to retrieve the catalogue from the API.

### Promotions

Our marketing team want to offer promotions as an incentive for our customers to buy stuff. Here are some examples:

- If you spend over £60, then you get 10% off of your purchase.
- If you buy 3 or more of a given item, the cost per item is reduced.

Please implement a simple system that allows these kinds of promotions to be configured. Because our promotions will change, the system needs to be quite flexible and open to extension.

## Extra Credit

For brownie points, feel free to complete one or more of the following tasks.

### Docker

The app currently only runs as a Ruby script. Please dockerise it, ideally with the aim of

- Legible & maintainable Dockerfile
- Secure application runtime
- Small container size

Feel free to use any official base image from the Docker Hub as a base.

### Persistence

Currently the user's basket is stored in memory. This is obviously not great. We would like to use a database to persist the data. Don't forget to provide a way to create the schema!

### Sessions

You may have noticed the app only supports one user session - there is just one global basket! Clearly this is not ideal. Please add support for multiple concurrent sessions in whatever way you think is appropriate. You can assume that sessions are anonymous and no authentication is needed.

## Improvements and future considerations

Point out any remaining issues you see in the app, and explain how you might fix them.

What architectural ideas would you explore to scale this service
- to 1000 requests per second?
- to millions of users?
- to several regions across the globe?

## Quiz

That's the end of the coding exercise. Now, a little quiz.

### General questions

These are inteded as quick questions; a one-line answer should be enough.

When applicable, feel free to simply use a code snippet as your answer.

Don't worry about open-ended questions - some have no definitive "correct" answers.

- On a GNU/Linux server, how would you search for the string "Error 500" in a logfile located at `/var/log/example.log`?
- What's the main difference between Subversion and Git?
- Which mechanism would you use to run a task every monday at 5am on a machine?
- You overhear, "My web service works fine when connecting on localhost, but not remotely." What would be the most common causes?
- You are building an application that handles highly sensitive data (e.g. medical records). How would you protect the data?

### Ruby / Rails questions

- What is the difference between `&&` and `and`?
- What is the difference between `Model#update` and `Model#update_columns`?
- When might you use a "form object"?
- What is Rack?
- What are some alternatives to Rails when building web services with Ruby? When would you prefer Rails?
- What are some differences between Unicorn and Puma?
- How would you test a component that interacts with a third-party API?

