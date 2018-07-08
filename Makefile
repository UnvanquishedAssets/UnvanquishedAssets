.DEFAULT_GOAL := all

ifneq ($(BUILD_PREFIX),)
	EXTRA_ARGS := --build-prefix ${BUILD_PREFIX}
else
	EXTRA_ARGS :=
endif

all: package

init:
	git submodule update --init --recursive

checkout:
	git submodule foreach git checkout master

pull:
	git submodule foreach git pull

clone: init checkout pull

prepare:
	urcheon prepare ${EXTRA_ARGS} src/*_src.dpkdir

build: prepare
	urcheon build ${EXTRA_ARGS} src/*_src.dpkdir

package: build
	urcheon package ${EXTRA_ARGS} src/*_src.dpkdir

prepare_maps:
	urcheon prepare ${EXTRA_ARGS} src/map-*_src.dpkdir

build_maps: build_resources build_textures prepare_maps
	urcheon build ${EXTRA_ARGS} src/map-*_src.dpkdir

package_maps: build_maps
	urcheon package ${EXTRA_ARGS} src/map-*_src.dpkdir

prepare_resources:
	urcheon prepare ${EXTRA_ARGS} src/res-*_src.dpkdir src/unvanquished_src.dpkdir

build_resources: prepare_resources
	urcheon build ${EXTRA_ARGS} src/res-*_src.dpkdir src/unvanquished_src.dpkdir

package_resources: build_resources
	urcheon package ${EXTRA_ARGS} src/res-*_src.dpkdir src/unvanquished_src.dpkdir

prepare_textures:
	urcheon prepare ${EXTRA_ARGS} src/tex-*_src.dpkdir

build_textures: prepare_textures
	urcheon build ${EXTRA_ARGS} src/tex-*_src.dpkdir

package_textures: build_textures
	urcheon package ${EXTRA_ARGS} src/tex-*_src.dpkdir

clean:
	urcheon clean ${EXTRA_ARGS} src/*.dpkdir
