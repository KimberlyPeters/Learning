# Welcome to My Mastermind
***

## Task
The challenge was to implement a Mastermind game using C language. The game should prompt the user for a guess and then evaluate it based on a randomly generated code. The program should keep track of the number of well-placed and misplaced colors in the user's guess and provide feedback accordingly. The user should be given a maximum number of attempts to guess the correct code, and if they fail to do so, the game should end.

## Description
Read the player's input from the standard input.
The program will also receive the following parameters:
-c [CODE]: specifies the secret code. If no code is specified, a random code will be generated.
-t [ATTEMPTS]: specifies the number of attempts; by default, the player has 10 attempts.
The program also has two functions to check if a guess or code is valid based on the length of the code.

## Installation
There is no installation process required for this program. Simply compile the code and run it.
but to compile the program use the following command: make. This is after the creation of your "Makefile" file

## Usage
The game starts by printing a welcome message and generating a code. The user is then prompted to enter their guess. If the guess is valid, it is evaluated based on the code, and the results are printed. If the guess is invalid, the user is prompted to enter another guess. The user is given a maximum number of attempts to guess the correct code. If the user guesses the code correctly within the maximum number of attempts, they win the game. If they fail to do so, the game ends, and the correct code is printed.
To run the program, simply compile the code and run the resulting executable. The program will either generate a random code or use a code specified by the user via a command-line argument. The user is then prompted to enter a guess, and the program evaluates the guess and provides feedback on the number of well-placed and misplaced pieces. The program continues to prompt the user for guesses until the correct code is guessed, at which point the program ends. The user can exit the program at any time by pressing Ctrl + d, which is considered normal program execution.
