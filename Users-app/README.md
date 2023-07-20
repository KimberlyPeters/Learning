# Welcome to My Users App
***

## Task
The problem is to create a user management system with CRUD operations using SQLite and Sinatra and implement the  famous architecture: MVC (Model View Controller). The challenge is to design and implement the database schema, handle user authentication and sessions, and create routes to handle different HTTP requests.

## Description
The solution involves creating a User class that interacts with the SQLite database using the sqlite3 gem. The class provides methods to create, find, update, and destroy users. Additionally, a controller named app.rb is created to handle HTTP requests and render JSON or HTML responses.

## Installation
Install the required gems: gem install sinatra sqlite3 gem install bundler

## Usage
The application provides the following routes:

GET /users: Retrieve all users (without their passwords) as JSON. POST /users: Create a new user and store it in the database. Returns the created user (without password) as JSON. POST /sign_in: Sign in the user by adding a session containing the user ID. Returns the signed-in user (without password) as JSON. PUT /users: Update the password of the currently signed-in user. Returns the updated user (without password) as JSON. DELETE /sign_out: Sign out the currently signed-in user. Returns no content. DELETE /users: Sign out and delete the currently signed-in user. Returns no content. Additionally, the GET / route renders the index.html template, which displays a table of users.
