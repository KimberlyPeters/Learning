#include <unistd.h>
#include <stdio.h>

int main(int argc, char *argv[])
{
    int count[256] = {0}; // initialize all counts to 0
    char *str;

    if (argc < 2) {
        printf("Usage: my_ngram string1 [string2 ...]\n");
        return 1;
    }

    // iterate over all input strings
    for (int i = 1; i < argc; i++) {
        str = argv[i];
        // iterate over all characters in the string
        while (*str) {
            count[*str]++;
            str++;
        }
    }

    // output each character and its count in alphabetical order
    for (int i = 0; i < 256; i++) {
        if (count[i] > 0) {
            printf("%c: %d\n", i, count[i]);
        }
    }

    return 0;
}
