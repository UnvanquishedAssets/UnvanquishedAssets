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
	urcheon prepare src/*_src.dpkdir

build: prepare
	urcheon build src/*_src.dpkdir

package: build
	urcheon package src/*_src.dpkdir

prepare_maps:
	urcheon prepare src/map-*_src.dpkdir

build_maps: build_resources build_textures prepare_maps
	urcheon build src/map-*_src.dpkdir

package_maps: build_maps
	urcheon package src/map-*_src.dpkdir

prepare_resources:
	urcheon prepare src/res-*_src.dpkdir src/unvanquished_src.dpkdir

build_resources: prepare_resources
	urcheon build src/res-*_src.dpkdir src/unvanquished_src.dpkdir

package_resources: build_resources
	urcheon package src/res-*_src.dpkdir src/unvanquished_src.dpkdir

prepare_textures:
	urcheon prepare src/tex-*_src.dpkdir

build_textures: prepare_textures
	urcheon build src/tex-*_src.dpkdir

package_textures: build_textures
	urcheon package src/tex-*_src.dpkdir

clean:
	urcheon clean src/*.dpkdir
