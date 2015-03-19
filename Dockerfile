
## -*- docker-image-name: "armbuild/ocs-app-docker:vivid" -*-
FROM armbuild/ocs-distrib-ubuntu:vivid
MAINTAINER Markus Mattinen <docker@gamma.fi>


# Prepare rootfs for image-builder
RUN /usr/local/sbin/builder-enter


# Upgrade packages
RUN apt-get -q update &&                   \
    apt-get --force-yes -y -qq upgrade &&  \
    apt-get clean


# Install Docker dependencies
RUN apt-get install $(apt-cache depends docker.io | grep Depends | sed "s/.*ends:\ //" | tr '\n' ' ')


# Install Docker 1.5
RUN wget http://ftp.fr.debian.org/debian/pool/main/d/docker.io/docker.io_1.5.0~dfsg1-1_armhf.deb -O /tmp/docker.deb \
 && dpkg -i /tmp/docker.deb \
 && rm -f /tmp/docker.deb


# Patch rootfs
ADD ./patches/etc/ /etc/


# Clean rootfs from image-builder
RUN /usr/local/sbin/builder-leave
