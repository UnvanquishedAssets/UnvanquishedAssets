Unvanquished Assets
===================

This is a set of repositories tracking assets for the [Unvanquished](https://www.unvanquished.net) game.


Repositories
------------

Assets packages tracked under [_UnvanquishedAssets_](https://github.com/UnvanquishedAssets/UnvanquishedAssets) umbrella:

- [`map-antares_src.dpkdir`](https://github.com/UnvanquishedAssets/map-antares_src.dpkdir)
- [`map-chasm_src.dpkdir`](https://github.com/UnvanquishedAssets/map-chasm_src.dpkdir)
- [`map-forlorn_src.dpkdir`](https://github.com/UnvanquishedAssets/map-forlorn_src.dpkdir)
- [`map-parpax_src.dpkdir`](https://github.com/UnvanquishedAssets/map-parpax_src.dpkdir)
- [`map-perseus_src.dpkdir`](https://github.com/UnvanquishedAssets/map-perseus_src.dpkdir)
- [`map-plat23_src.dpkdir`](https://github.com/UnvanquishedAssets/map-plat23_src.dpkdir)
- [`map-spacetracks_src.dpkdir`](https://github.com/UnvanquishedAssets/map-spacetracks_src.dpkdir)
- [`map-station15_src.dpkdir`](https://github.com/UnvanquishedAssets/map-station15_src.dpkdir)
- [`map-thunder_src.dpkdir`](https://github.com/UnvanquishedAssets/map-thunder_src.dpkdir)
- [`map-vega_src.dpkdir`](https://github.com/UnvanquishedAssets/map-vega_src.dpkdir)
- [`map-yocto_src.dpkdir`](https://github.com/UnvanquishedAssets/map-yocto_src.dpkdir)
- [`res-ambient_src.dpkdir`](https://github.com/UnvanquishedAssets/res-ambient_src.dpkdir)
- [`res-buildables_src.dpkdir`](https://github.com/UnvanquishedAssets/res-buildables_src.dpkdir)
- [`res-legacy_src.dpkdir`](https://github.com/UnvanquishedAssets/res-legacy_src.dpkdir)
- [`res-players_src.dpkdir`](https://github.com/UnvanquishedAssets/res-players_src.dpkdir)
- [`res-soundtrack_src.dpkdir`](https://github.com/UnvanquishedAssets/res-soundtrack_src.dpkdir)
- [`res-voices_src.dpkdir`](https://github.com/UnvanquishedAssets/res-voices_src.dpkdir)
- [`res-weapons_src.dpkdir`](https://github.com/UnvanquishedAssets/res-weapons_src.dpkdir)
- [`tex-all_src.dpkdir`](https://github.com/UnvanquishedAssets/tex-all_src.dpkdir)
- [`tex-common_src.dpkdir`](https://github.com/UnvanquishedAssets/tex-common_src.dpkdir)
- [`tex-ej01_src.dpkdir`](https://github.com/UnvanquishedAssets/tex-ej01_src.dpkdir)
- [`tex-exm_src.dpkdir`](https://github.com/UnvanquishedAssets/tex-exm_src.dpkdir)
- [`tex-ex_src.dpkdir`](https://github.com/UnvanquishedAssets/tex-ex_src.dpkdir)
- [`tex-pk01_src.dpkdir`](https://github.com/UnvanquishedAssets/tex-pk01_src.dpkdir)
- [`tex-pk02_src.dpkdir`](https://github.com/UnvanquishedAssets/tex-pk02_src.dpkdir)
- [`tex-space_src.dpkdir`](https://github.com/UnvanquishedAssets/tex-space_src.dpkdir)
- [`tex-tech_src.dpkdir`](https://github.com/UnvanquishedAssets/tex-tech_src.dpkdir)
- [`tex-trak5_src.dpkdir`](https://github.com/UnvanquishedAssets/tex-trak5_src.dpkdir)
- [`tex-vega_src.dpkdir`](https://github.com/UnvanquishedAssets/tex-vega_src.dpkdir)
- [`unvanquished_src.dpkdir`](https://github.com/UnvanquishedAssets/unvanquished_src.dpkdir)


How-to
------

To fetch assets you need the [`git`](https://git-scm.com/) version control system, and to build them you need the [`urcheon`](https://github.com/DaemonEngine/Urcheon) build tool, and its dependencies.


### Clone this repository, enter it

```sh
git clone https://github.com/UnvanquishedAssets/UnvanquishedAssets.git
cd UnvanquishedAssets
```

### Clone every package

```
make clone
```

### Fetch updates for every package

```
make fetch
```

### Checkout reference for every package

It defaults to `master` if `GIT_REF` is not set

```
make checkout GIT_REF='unvanquished/0.51.1'
```

### Prepare assets for mapping (generate preview images and shaders for example)

```sh
make prepare
```

You can now use `src/` as a pakpath in `radiant` and with `q3map2`.

### Build test dpkdir (using final formats) for every package

```sh
make build
```

You can now use `build/test` as pakpath in `daemon`.

### Packaging final release dpk for every package

```sh
make package
```

You can now use `build/pkg` as pakpath in `daemon`


Credits
-------

* The [Unvanquished team](https://unvanquished.net/?page_id=336)
