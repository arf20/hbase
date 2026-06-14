PREFIX = "./build"
SHELL = /bin/sh
CC = gcc
HOSTCC = $(CC)
INSTALL = /usr/bin/install
CFLAGS = "-s"
LDFLAGS = -s
MANDIR = "$(PREFIX)/share/man"
BINDIR = "$(PREFIX)/bin"
LIBDIR = "$(PREFIX)/lib"

.PHONY: heirloom clean

all: heirloom


heirloom:
	$(MAKE) -C heirloom CFLAGS="$(CFLAGS)" CFLAGSS="$(CFLAGS)" \
		LDFLAGS="$(LDFLAGS)" CC="$(CC)" cc="$(CC)" HOSTCC="$(CC)" \
		POSIX_SHELL="$(SHELL)" SHELL="$(SHELL)" YACC="$(YACC)" INSTALL="$(INSTALL)" \
		PREFIX="$(PREFIX)" MANDIR="$(MANDIR)" BINDIR="$(BINDIR)" SUSBIN="$(BINDIR)" \
		SU3BIN="$(BINDIR)" UCBBIN="$(BINDIR)" DEFLIB="$(LIBDIR)" DEFBIN="$(BINDIR)" \
		MAGIC="/lib/magic" DEFSBIN="$(BINDIR)" SV3BIN="$(BINDIR)"

clean:
	$(MAKE) -C heirloom clean

