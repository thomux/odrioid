#!/bin/bash

docker run -it --rm \
    -v ${PWD}/work:/home/tom/work \
    -v ${PWD}/downloads:/home/tom/downloads \
    -v ${PWD}/sstate-cache:/home/tom/sstate-cache \
    -v ~/.ssh:/home/tom/.ssh:ro  \
    -v ~:/home/tom/host:ro \
    yocto-odriod bash
