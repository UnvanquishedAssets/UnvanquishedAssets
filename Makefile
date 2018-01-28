.DEFAULT_GOAL := all

all: package

init:
	git submodule update --init --recursive

checkout:
	git submodule foreach git checkout master

pull:
	git submodule foreach git pull

clone: init checkout pull

prepare:
	urcheon prepare src/*.dpkdir

build: prepare
	urcheon build src/*.dpkdir

package: build
	urcheon package src/*.dpkdir

clean:
	urcheon clean src/*.dpkdir
