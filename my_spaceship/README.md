# Welcome to My Spaceship
***

## Task

* The problem that this code solves is simulating the movement of a spaceship based on a sequence of commands.

* The challenge is to correctly interpret the commands and track the position and direction of the spaceship as it moves.

## Description

You have been recently been hired by SpacePro, a new rocket manufacturer, and have been tasked with designing a simulator for their spaceships. This simulator creates a virtual “space” and keeps track of the basic movements and direction of a given ship. Your job is to keep track of where the ship is and it’s orientation relative to its starting point.
* I created a function "my_spaceship", the function starts with x and y coordinates set to 0 and direction set to "up". It then iterates over each character in the flight path and updates the x, y coordinates and the direction based on the character.

* The code keeps track of the ship's current direction and location, and updates them based on the input commands (turn left, turn right, or advance).

* The code uses an object called Direction to store the possible directions (up, down, left, and right), and initializes the ship's starting direction as "up", and its starting location as (0,0).

* Inside the for loop that iterates over each character in the flight path, the code checks the current character and updates the ship's direction and location accordingly. If the character is 'R' or 'L', the code updates the ship's direction by turning it right or left. If the character is 'A', the code moves the ship forward in its current direction.

* Finally, the code returns an object with the ship's final x and y coordinates, as well as its final direction. The coordinates and direction are formatted as a string in the format "{x: X, y: Y, direction: 'DIRECTION'}".

## Installation

None of the above was used to install. 

## Usage

./my_spaceship(flightParam)
The code works as follows:

* It first defines a constant object called Direction with four properties, which correspond to the four possible directions the spaceship can face: Up, Down, Left, and Right.

* It then initializes three variables: current_direction, currentX, and currentY. These variables keep track of the current direction the spaceship is facing and its position on the grid.

* The function then loops over each character in the input string flightParam. If the character is "R" or "L", it updates the current_direction variable based on the spaceship's current direction and the direction it needs to turn to. If the character is "A", it updates the currentX or currentY variable based on the spaceship's current direction and the distance it needs to move in that direction.

* Finally, the function creates an object called result with the current position and direction of the spaceship, and returns it.

* The function essentially simulates the movement of a spaceship on a two-dimensional grid based on the input string flightParam and returns the final position and direction of the spaceship after following the instructions in the input string.
