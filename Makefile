include config.mk

default: auric.1

install: install-bin install-man

install-bin: auric
	install -d $(BIN)
	install auric $(BIN)

install-man: auric.1
	install -d $(MAN)
	install auric.1 $(MAN)

auric.1: auric.pod
	pod2man -c '' -r 'AURIC(1)' $< > $@

.PHONY: default install install-bin install-man
