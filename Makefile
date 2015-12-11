all::


all:: help

help:
	clear
	echo "Run 'sudo make install' to install Admin Tools Box (ATB) under /usr/bin."
	echo "Run 'sudo make uninstall' to uninstall Admin Tools Box (ATB)."
	echo "Run 'make doc' to build the documentation (require the package doxygen)."
	echo "Run 'make rebuilddoc' to rebuild the documentation."
	echo "Run 'make rmdoc' to remove the documentation."

install:
	cp -p -r -f ./bin/* /usr/bin
	cp -p -r -f ./lib/* /usr/lib
	cp -p -r -f ./locale /usr/locale
	echo "Run 'atb --help'"

unistall:
	rm -r -f /usr/bin/ATB
	rm -f /usr/bin/atb
	rm -r -f /usr/lib/ATB
	rm -r -f /usr/locale
	rm -r -f ./locale
	rm -r -f ./doc
	rm -f ./Makefile

doc:
	mkdir -p ./doc
	doxygen > "/dev/null" 2>&1

rmdoc:
	rm -r -f ./doc

rebuilddoc: rmdoc doc

.SILENT: help doc rmdoc rebuilddoc install

