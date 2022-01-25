CC=gcc
CFLAGS=-I../include
.PHONY:out clean
out: 
	$(CC) -o $@ main.c hello.c $(CFLAGS)
clean:
	rm -rf out main.o hello.o