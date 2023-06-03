#include "my_mastermind.h"
int main(int argc, char* argv[])
{
    int code_size = 4;
    char secret_code[code_size];
    int max_trials = 10;

    if (argc == 1) {
        generate_secret_code(secret_code);
    }

    if (argc > 1) {
        int i = 0;
        while (i < argc) {
            if (strcmp(argv[i], "-c") == 0) {
                for (int j = 0; j < code_size; j++) {
                    secret_code[j] = argv[i+1][j];
                }
                secret_code[code_size] = '\0';
            }
            if (strcmp(argv[i], "-t") == 0) {
                max_trials = atoi(argv[i+1]);
            }
            i++;
        }
    }

    int attempts = 0;
    while (attempts < max_trials) {
        if (attempts == 0) {
            printf("Will you find the secret code?\nPlease enter a valid guess\n");
        }
        printf("---\nRound %i\n", attempts);
        char user_input[5];
        int response;
        ssize_t num_chars_read;

        while (1) {
            printf(">\n");
            num_chars_read = read(0, user_input, sizeof(user_input));

            if (num_chars_read == 0) {
                return 1;
            }

            if (num_chars_read == -1) {
                return 1;
            }

            if (num_chars_read == 5) {
                user_input[num_chars_read] = '\0';
                response = atoi(user_input);

                if (response == 0) {
                    printf("Wrong input!\n");
                } else {
                    if (response >= 0000 && response <= 8888) {
                        if (user_input[0] == user_input[1] || user_input[0] == user_input[2] || user_input[0] == user_input[3] ||
                            user_input[1] == user_input[2] || user_input[1] == user_input[3] || user_input[2] == user_input[3]) {
                            printf("Wrong input!\n");
                        } else {
                            break;
                        }
                    }
                }
            } else {
                printf("Wrong input!\n");
            }
        }

        int well_placed_count = 0;
        int misplaced_count = 0;

        int i = 0;
        while (i < code_size) {
            if (secret_code[i] == user_input[i]) {
                well_placed_count++;
            }
            if (find_character(secret_code, user_input[i]) != 0 && secret_code[i] != user_input[i]) {
                misplaced_count++;
            }
            i++;
        }

        if (well_placed_count == code_size) {
            printf("Congratz! You did it!\n");
            return 0;
        } else {
            printf("Well placed pieces: %i\n", well_placed_count);
            printf("Misplaced pieces: %i\n", misplaced_count);
        }
        attempts++;
    }
    return 0;
}

int string_length(char* str)
{
    int length = 0;
    while (str[length] != '\0') {
        length++;
    }
    return length;
}

int find_character(char* str, char c)
{
    int index = 0;
    while (index < string_length(str)) {
        if (str[index] == c) {
            return 1;
        }
        index++;
    }
    return 0;
}

void generate_secret_code(char* secret_code) {
    srand(time(NULL)); // Seed the random number generator
    for (int i = 0; i < 4; i++) {
        secret_code[i] = rand() % 10 + '0'; // Generate a random digit from '0' to '9'
    }

    secret_code[4] = '\0'; // Null-terminate the string
}
