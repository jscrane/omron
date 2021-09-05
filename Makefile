CPPFLAGS := -I /usr/local/include/libomron
CFLAGS := -g
CC := gcc
LDFLAGS := -L /usr/local/lib -lomron -lm

all: omron

omron: omron.o
	$(LINK.c) -o omron omron.o

install: omron
	install -m0755 omron /usr/local/bin

clean:
	rm -f omron omron.o
