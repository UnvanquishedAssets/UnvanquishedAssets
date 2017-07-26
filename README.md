Unvanquished Assets
===================

This is a set of repositories tracking assets for the [Unvanquished](https://www.unvanquished.net) game.

Respositories
-------------

Assets packages already tracked under [_UnvanquishedAssets_](https://github.com/UnvanquishedAssets/UnvanquishedAssets) umbrella:

- [`res-ambient_src.dpkdir`](https://github.com/UnvanquishedAssets/res-ambient_src.dpkdir)
- [`res-buildables_src.dpkdir`](https://github.com/UnvanquishedAssets/res-buildables_src.dpkdir)
- [`res-feedback_src.dpkdir`](https://github.com/UnvanquishedAssets/res-feedback_src.dpkdir)
- [`res-legacy_src.dpkdir`](https://github.com/UnvanquishedAssets/res-legacy_src.dpkdir)
- [`res-players_src.dpkdir`](https://github.com/UnvanquishedAssets/res-players_src.dpkdir)
- [`res-soundtrack_src.dpkdir`](https://github.com/UnvanquishedAssets/res-soundtrack_src.dpkdir)
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
- [`unvanquished_src.dpkdir`](https://github.com/UnvanquishedAssets/unvanquished_src.dpkdir)

Some assets packages are currently tracked elsewhere:

- [`map-chasm`](https://github.com/JacksonTech/map-chasm)
- [`map-spacetracks`](https://github.com/JacksonTech/map-spacetracks)
- [`map-station15`](https://github.com/JacksonTech/map-station15)
- [`map-vega`](https://github.com/IngarKCT/map-vega) (also contains `tex-vega`)

Somme assets packages are yet to be tracked on repositories:

- `map-antares`
- `map-forlorn`
- `map-parpax`
- `map-perseus`
- `map-plat23`
- `map-thunder`
- `map-yocto`

How-to
------

To fetch assets you need the [`git`](https://git-scm.com/) version control system, and to build them you need the [`urcheon`](https://github.com/illwieckz/Urcheon) build tool, and its dependencies.


### Clone this repository, enter it

```sh
git clone https://github.com/UnvanquishedAssets/UnvanquishedAssets.git
cd UnvanquishedAssets
```

### Clone every set

```
make clone
```

### Pull updates for every set

```
make pull
```

### Prepare assets for mapping (generate preview images and shaders for example)

```sh
make prepare
```

You can now use `src/` as a pakpath in `radiant`/`q3map2`.

### Build test dpkdir (using final formats) for every set

```sh
make build
```

You can now use `build/test` as pakpath in `daemon`.

### Packaging final release dpk for every set

```sh
make package
```

You can now use `build/pkg` as pakpath in `daemon`


Credits
-------

* The [Unvanquished team](https://unvanquished.net/?page_id=336)
