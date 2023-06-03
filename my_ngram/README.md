# Welcome to My Ngram
***

## Task
The task is to write a program in C called my_ngram that takes 1 or more strings as arguments and counts the number of occurrences per character. The program should display each character and the number of times it appears, one per line, in alphabetical order. The challenge is to implement the program using only the printf and write functions while avoiding any function or syscall not included in this list.

## Description
The solution involves iterating over each input string and counting the occurrence of each character in the string. An array of size 256 is initialized to store the count of each character, and all the counts are set to zero initially. The program then iterates over all input strings and all characters in each string, incrementing the count of the corresponding character in the array. Finally, the program outputs each character and its count in alphabetical order.

## Installation
To compile the program, navigate to the directory containing the source code and run the following command:
gcc -Wall -Wextra -Werror my_ngram.c -o my_ngram

## Usage
The program takes one or more strings as arguments, and the counts of each character are printed to the standard output in alphabetical order. To run the program, enter the following command in the terminal:
./my_ngram string1 [string2 ...]
where string1, string2, etc. are the input strings to be analyzed.
Example:
./my_ngram "abcdef"
The output of the programme would be:
a: 1
b: 1
c: 1
d: 1
e: 1
f: 1
which indicates that each character appears exactly once in the input string
