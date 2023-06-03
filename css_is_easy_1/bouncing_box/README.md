# Welcome to My Bouncing Box
***

## Task

The problem is to create a replica of the famous Windows Screensaver - Bounce using HTML and JavaScript, without the use of JQuery or the canvas tag. The task requires moving a div element diagonally across the screen and reversing its direction each time it reaches a screen border. The challenge is to implement the logic for the box's movement and direction reversal, while also ensuring that the box stays within the bounds of the screen.

## Description

To solve the problem, we first obtain the div element with the ID my_bouncing_box using the document.getElementById() function. Then, we define the initial position of the box, the direction it should move, and the rate of movement. We use setInterval() to repeatedly execute a function that updates the position of the box by adding the direction values to the x and y coordinates and updating the box's left and top style properties. We also check if the box has hit any of the screen borders and change its direction accordingly, ensuring that it stays within

## Installation

There was no installation necessary to complete this project

## Usage

To use the bouncing box screensaver, simply include the provided HTML and JavaScript code in your project, and customize the movement speed by changing the speed variable in the JavaScript code. The bouncing box will then move diagonally and bounce off the screen borders in the correct direction, creating a fun and interactive screensaver.
