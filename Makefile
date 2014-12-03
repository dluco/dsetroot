# See COPYING file for license details

export

VERSION = 1.0.2

all: dsetroot

dsetroot:
	${MAKE} -C src/

clean:
	${MAKE} -C src/ clean

.PHONY: all clean
