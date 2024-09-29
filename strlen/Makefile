CC=cc
CFLAGS=-Wall
AS=nasm
ASFLAGS=-felf64

build: driver

driver: strlen.o driver.o
strlen.o: strlen.s

clean:
	rm -f driver driver.o strlen.o

.PHONY: build clean
