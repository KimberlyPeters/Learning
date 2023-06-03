# Welcome to My First Backend
***

## Task

The problem is to create a backend app with a light web framework in Express.js that has several routes for retrieving information related to Frank Sinatra. The challenge is to implement each of these routes correctly and securely, including authentication for the protected route.

## Description

I have created an Express.js app that implements each of the required routes. The app uses various npm packages, including cors for handling CORS headers, dotenv for managing environment variables, and basic-auth for handling basic authentication for the protected route. The Sinatra song names, birth date, birth city, and wife names are stored as constants within the app.

## Installation

There was no necessary installation for this task 

## Usage

The available routes and their functionality are as follows:

* GET /: Returns a random Frank Sinatra song name from a pool of at least 20.
* GET /birth_date: Returns Frank Sinatra's birth date.
* GET /birth_city: Returns Frank Sinatra's birth city.
* GET /wives: Returns a comma-separated string of all of Frank Sinatra's wives.
* GET /picture: Redirects to a picture of Frank Sinatra.
* GET /public: Returns the string "Everybody can see this page".
* GET /protected: Requires basic authentication. If authenticated with the login admin and password admin, returns the string "Welcome, authenticated client". Otherwise, returns a 401 Not authorized error.
