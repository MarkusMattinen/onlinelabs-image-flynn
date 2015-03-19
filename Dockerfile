
## -*- docker-image-name: "armbuild/ocs-app-docker:vivid" -*-
FROM armbuild/ocs-distrib-ubuntu:vivid
MAINTAINER Markus Mattinen <docker@gamma.fi>


# Prepare rootfs for image-builder
RUN /usr/local/sbin/builder-enter


# Upgrade packages
RUN apt-get -q update &&                   \
    apt-get --force-yes -y -qq upgrade &&  \
    apt-get clean


# Clean rootfs from image-builder
RUN /usr/local/sbin/builder-leave
