# Welcome to My Printf
***

## Task
The problem is to implement a custom version of the printf function in C. The challenge lies in accurately parsing the format string and handling various format specifiers, such as %d, %s, %c, %x, %p, and %o, to correctly print the corresponding values. Additionally, the challenge includes managing variable arguments using the va_list and va_arg macros.

## Description
To solve the problem, I have implemented a custom my_printf function in C. This function takes a format string as the first argument, followed by optional variable arguments. It iterates through the format string, parsing each character, and handling format specifiers accordingly. For each format specifier encountered, the corresponding value from the variable arguments is extracted using the va_arg macro, and the appropriate conversion function is called to print the value.

I have implemented separate functions for each conversion specifier, such as print_num for %d and %i, print_string for %s, print_hexa for %x, print_pointer for %p, and print_octal for %o. These functions handle the conversion and printing of values in the desired format.

## Installation
There was no necessary intsallation for this project, it just had to be compiled using `-Wall -Wextra -Werror.`

## Usage
The my_printf function works by iterating through the format string character by character. When a '%' character is encountered, it checks the next character to determine the format specifier. If a valid format specifier is found, the corresponding conversion function is called to print the value from the variable arguments.

### The Core Team
Kimberly Peters
