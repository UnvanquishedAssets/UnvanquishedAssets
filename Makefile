.DEFAULT_GOAL := all

ROOT_DIR := $(shell dirname $(realpath $(lastword $(MAKEFILE_LIST))))
export BUILDPREFIX = ${ROOT_DIR}/build
export PAKPATH := ${ROOT_DIR}/src:$(PAKPATH)

all: package

init:
	git submodule update --init --recursive

pull:
	git submodule foreach git pull origin master

prepare:
	urcheon prepare src/*.dpkdir

build: prepare
	urcheon build src/*.dpkdir

package: build
	urcheon package src/*.dpkdir

clean:
	urcheon clean src/*.dpkdir
