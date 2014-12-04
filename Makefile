# See COPYING file for license details

export

PREFIX ?= /usr

VERSION = 1.0.2

all: dsetroot

dsetroot:
	@${MAKE} -C src/

clean:
	@${MAKE} -C src/ clean

install: all
	@install -D -m755 src/dsetroot ${DESTDIR}${PREFIX}/bin/dsetroot

uninstall:
	@${RM} ${DESTDIR}${PREFIX}/bin/dsetroot

.PHONY: all clean install uninstall
