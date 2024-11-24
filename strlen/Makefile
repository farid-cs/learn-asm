CC = cc
CFLAGS = -std=c99 -pedantic -Wall -Wextra
AS = fasm

build: driver

driver: strlen.o driver.o
strlen.o: strlen.s
	$(AS) $< $@

clean:
	rm -f driver driver.o strlen.o

.PHONY: build clean
