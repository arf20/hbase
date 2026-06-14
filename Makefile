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

.PHONY: heirloom heirloom-devtools clean

all: heirloom heirloom-devtools

heirloom:
	$(MAKE) -C heirloom CFLAGS="$(CFLAGS)" CFLAGSS="$(CFLAGS)" \
		LDFLAGS="$(LDFLAGS)" CC="$(CC)" cc="$(CC)" HOSTCC="$(CC)" \
		POSIX_SHELL="$(SHELL)" SHELL="$(SHELL)" YACC="$(YACC)" INSTALL="$(INSTALL)" \
		PREFIX="$(PREFIX)" MANDIR="$(MANDIR)" BINDIR="$(BINDIR)" SUSBIN="$(BINDIR)" \
		SU3BIN="$(BINDIR)" UCBBIN="$(BINDIR)" DEFLIB="$(LIBDIR)" DEFBIN="$(BINDIR)" \
		MAGIC="/usr/share/file/magic" DEFSBIN="$(BINDIR)" SV3BIN="$(BINDIR)"

heirloom-devtools:
	$(MAKE) -C heirloom-devtools CFLAGS="$(CFLAGS)" CFLAGSS="$(CFLAGS)" \
		LDFLAGS="$(LDFLAGS)" CC="$(CC)" cc="$(CC)" HOSTCC="$(CC)" \
		POSIX_SHELL="$(SHELL)" SHELL="$(SHELL)" YACC="../yacc/yacc -P../yacc/yaccpar" INSTALL="$(INSTALL)" \
		PREFIX="$(PREFIX)" MANDIR="$(MANDIR)" BINDIR="$(BINDIR)" SUSBIN="$(BINDIR)" \
		SU3BIN="$(BINDIR)" UCBBIN="$(BINDIR)" DEFLIB="$(LIBDIR)" DEFBIN="$(BINDIR)" \
		MAGIC="/usr/share/file/magic" DEFSBIN="$(BINDIR)" SV3BIN="$(BINDIR)"

heirloom-clean:
	$(MAKE) -C heirloom clean

heirloom-devtools-clean:
	$(MAKE) -C heirloom-devtools clean

