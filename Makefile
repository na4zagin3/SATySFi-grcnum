PREFIX=/usr/local
LIBDIR=$(PREFIX)/share/satysfi
PACKAGE_NAME=satysfi-grcnum
PACKAGE_DIR=$(LIBDIR)/$(PACKAGE_NAME)

.PHONY: all
.PHONY: doc install uninstall

all:
	:

doc: doc-grcnum.pdf

%.pdf: %.saty grcnum.satyh
	satysfi $<

install:
	install -d "$(PACKAGE_DIR)/packages"
	install -m 644 *.satyh $(PACKAGE_DIR)/packages

uninstall:
	rm -rf "$(PACKAGE_DIR)"
