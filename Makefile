include config.mk

default: auric.1

install: install-bin link-bin install-man

install-bin: auric
	install -d $(BIN)
	install auric $(BIN)
	install bin/*-* $(BIN)

link-bin:
	ln -F -s $(BIN)/auric $(PREFIX)/bin/

install-man: auric.1
	install -d $(MAN)
	install auric.1 $(MAN)

auric.1: auric.but
	halibut --man=auric.1 auric.but

.PHONY: default install install-bin link-bin install-man