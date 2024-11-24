CC = cc
CFLAGS = -std=c99 -pedantic -Wall -Wextra
AS = fasm

build: driver

driver: memset.o driver.o
memset.o: memset.s
	$(AS) $< $@

clean:
	rm -f driver driver.o memset.o

.PHONY: build clean
