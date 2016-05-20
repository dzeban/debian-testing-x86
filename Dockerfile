FROM scratch
ADD rootfs.tar.gz /
CMD ["/usr/bin/linux32", "/bin/bash"]
