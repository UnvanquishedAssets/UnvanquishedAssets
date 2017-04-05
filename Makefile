.DEFAULT_GOAL := all

ROOT_DIR := $(shell dirname $(realpath $(lastword $(MAKEFILE_LIST))))
export BUILDPREFIX = ${ROOT_DIR}/build
export PAKPATH := ${ROOT_DIR}/src:$(PAKPATH)

all: package

init:
	git submodule update --init --recursive

prepare:
	urcheon prepare src/*.dpkdir

build: prepare
	urcheon build src/*.dpkdir

package: build
	urcheon package src/*.dpkdir
