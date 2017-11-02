.DEFAULT_GOAL := all

all: package

clone:
	git submodule update --init --recursive

pull:
	git submodule foreach git pull

prepare:
	urcheon prepare src/*.dpkdir

build: prepare
	urcheon build src/*.dpkdir

package: build
	urcheon package src/*.dpkdir

clean:
	urcheon clean src/*.dpkdir
