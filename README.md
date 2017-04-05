Unvanquished Assets
-------------------

This is a set of repositories tracking assets for the [Unvanquished](https://www.unvanquished.net) game.


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
