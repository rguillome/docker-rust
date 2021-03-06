# docker-rust [![Build Status](https://travis-ci.org/rguillome/docker-rust.svg?branch=master)](https://travis-ci.org/rguillome/docker-rust)

Public trusted images available on:

* [Docker Hub](https://hub.docker.com/r/rguillom/docker-rust/)

This repository is used to build a Docker image for the Rust programming language and a few supporting tools. The image includes `rustc`, `rustdoc`, `cargo`, `git`, SSL certificates, and build essentials, so it should be able to run `cargo build` on most projects out of the box. The path `/source` is a volume where you can mount a Cargo project from the host machine.
This image provide containers that contains rustup binary and make and update each time the container starts

## Usage

The following command will allow to run cargo command as a build one into the current directory. From there you can run `rustc`, `rustdoc`, and `cargo` as you please.

``` bash
docker run -it --rm -v $(pwd):/source rguillom/rust cargo build
```

or you can just log into a bash shell
``` bash
docker run -it --rm -v $(pwd):/source rguillom/rust /bin/bash

## License

[MIT](http://opensource.org/licenses/MIT)
