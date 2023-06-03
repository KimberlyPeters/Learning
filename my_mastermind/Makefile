CC = gcc
SRC = my_mastermind.c
OBJ = $(SRC:.c=.o)
NAME = my_mastermind
RM = rm -f
CFLAGS = -Wall -Werror -Wextra

all: $(OBJ)
	$(CC) $(CFLAGS) $(OBJ) -o $(NAME)

clean:
	$(RM) *~ $(NAME)

oclean:
	$(RM) $(OBJ)

fclean: clean oclean

re: fclean all
