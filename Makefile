.PHONY:out clean link static
CC := gcc
PRO_DIR :=.
INC_DIR :=./include/hello.h
SRC_DIR	:=$(PRO_DIR)/src
CFLAGS := -I./include
static:object/*.o
	ar rcs lib/static/libhello.a $^
object/%.o:src/%.c ./include/hello.h ./include/helloKma.h
	$(CC) -c $< -o $@ $(CFLAGS)
out:./object/hello.o ./object/main.o ./object/helloKma.o
	$(CC) -o ./object/out object/main.o object/hello.o object/helloKma.o $(CFLAGS) 
link:
	$(CC)   object/main.o  -Llib/static -lhello -o bin/statically-linked
clean:
	# @echo "haha"
	rm -rf ./object/*.exe object/*.o 