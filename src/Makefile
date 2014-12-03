# See COPYING file for license details

VERSION ?= 1.0.2

DEFINES := -DVERSION=\"${VERSION}\"

CC = gcc
CFLAGS := -Wall $(shell imlib2-config --cflags) ${DEFINES}
LDFLAGS := $(shell imlib2-config --libs) -lX11

all: dsetroot

dsetroot: dsetroot.c
	$(CC) -o $@ $^ $(CFLAGS) $(LDFLAGS)

clean:
	$(RM) dsetroot

.PHONY: all clean
