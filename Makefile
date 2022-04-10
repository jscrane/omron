CPPFLAGS := -I /usr/local/include/libomron
CFLAGS := -g
CC := gcc
LDFLAGS := -L /usr/local/lib -lomron -lm

all: omron

omron: omron.o
	$(LINK.c) -o omron omron.o

install: omron
	install -m0755 omron /usr/local/bin
	install -m0644 69-libomron.rules /etc/udev/rules.d

clean:
	rm -f omron omron.o
