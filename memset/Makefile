CC=cc
CFLAGS=-Wall
AS=nasm
ASFLAGS=-felf64

build: driver

driver: memset.o driver.o

clean:
	rm -f driver driver.o memset.o

.PHONY: build clean
