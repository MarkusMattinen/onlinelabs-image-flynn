
## -*- docker-image-name: "armbuild/ocs-app-docker:vivid" -*-
FROM armbuild/ocs-distrib-ubuntu:vivid
MAINTAINER Markus Mattinen <docker@gamma.fi>


# Prepare rootfs for image-builder
RUN /usr/local/sbin/builder-enter


# Upgrade packages
RUN apt-get -q update &&                   \
    apt-get --force-yes -y -qq upgrade &&  \
    apt-get -y -qq --no-install-recommends install git &&  \
    apt-get clean


# Build Flynn
RUN git clone https://github.com/flynn/flynn /tmp/flynn


# Clean rootfs from image-builder
RUN /usr/local/sbin/builder-leave
