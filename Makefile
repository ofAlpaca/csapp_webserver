CFLAGS = -O0 -Wall -Werror -g3

all:
	gcc $(CFLAGS) -o webserver tiny.c csapp.c -pthread