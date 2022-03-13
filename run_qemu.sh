#!/bin/bash

qemu-system-arm \
    -drive id=disk0,file=${PWD}/work/tmp/deploy/images/qemuarm/thomux-qemu-qemuarm.ext4,if=none,format=raw \
    -device virtio-blk-device,drive=disk0 \
    -machine virt,highmem=off \
    -cpu cortex-a15 \
    -smp 4 \
    -m 256 \
    -nographic \
    -kernel ${PWD}/work/tmp/deploy/images/qemuarm/zImage-qemuarm.bin \
    -append 'root=/dev/vda ro  mem=256M ip=dhcp console=ttyAMA0 console=hvc0 vmalloc=256 '
