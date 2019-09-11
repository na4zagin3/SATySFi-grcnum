PACKAGE_NAME=grcnum

.PHONY: doc

doc: doc-grcnum.pdf

doc-grcnum.pdf: doc-$(PACKAGE_NAME).saty satysfi-$(PACKAGE_NAME).opam grcnum.satyh Satyristes
	opam pin add satysfi-$(PACKAGE_NAME).opam "file://$(PWD)" -y
	satyrographos opam build -name $(PACKAGE_NAME)-doc
