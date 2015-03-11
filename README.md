# docker-embulk

## usage

### build:

    $ docker build -t hoshinotsuyoshi/embulk .

### run:

    $ docker run --rm -it -v=${PWD}:/data hoshinotsuyoshi/embulk:0.5.2 [subcommand]

### bash in container

    $ docker run --rm -it --entrypoint=/bin/bash -v=${PWD}:/data hoshinotsuyoshi/embulk:0.5.2
