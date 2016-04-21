# Docker image with pre-installed dependencies for building HHVM

## Usage
```
docker run --rm -it -v /path/to/hhvm/source:/hhvm nazarpc/build-hhvm
```

`build` cli command available inside if you'll enter container, it is a handy bash script that will build HHVM on all available CPU cores.

`build` is called in `/hhvm` directory if you run container without additional options.

## License
Public Domain
