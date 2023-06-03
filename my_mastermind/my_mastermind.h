#ifndef __MY_MASTERMIND_H__
#define __MY_MASTERMIND_H__

#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <string.h>
#include <unistd.h>

void generate_secret_code(char* secret_code);
int string_length(char* str);
int find_character(char* str, char c);

#endif /* __MY_MASTERMIND_H__ */
