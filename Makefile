.PHONY: all

all: doc-grcnum.pdf

%.pdf: %.saty grcnum.satyh
	satysfi $<
