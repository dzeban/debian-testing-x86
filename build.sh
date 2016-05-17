#!/bin/bash

dir=$(mktemp -d -p $(pwd))

debootstrap --arch=i386 --variant=minbase testing ${dir}
chroot ${dir} tar --exclude=rootfs.tar.gz -cpzf rootfs.tar.gz /
mv ${dir}/rootfs.tar.gz .
rm -rf ${dir}

docker build -t alexdzyoba/debian-testing-x86 .
