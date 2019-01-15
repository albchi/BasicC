#!/bin/bash

gcc -c -fpic foo.c 

gcc -shared -o libfoo.so foo.o

gcc -L /home/albchi/Clang -o test -lfoo -lm main.c

export LD_LIBRARY_PATH=/home/albchi/Clang

./test
