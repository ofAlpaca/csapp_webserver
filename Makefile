CFLAGS = -O0 -Wall -Werror -g3

webserver:
	gcc $(CFLAGS) -o webserver tiny.c csapp.c -pthread
	gcc $(CFLAGS) -o ./cgi-bin/adder ./cgi-bin/adder.c csapp.c -pthread

test: webserver
	./webserver 7777

log: webserver
	./webserver 7777 > logfile

clean:
	rm -rf logfile webserver ./cgi-bin/adder