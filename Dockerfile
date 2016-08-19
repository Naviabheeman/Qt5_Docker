FROM ubuntu:14.04
MAINTAINER Ali Diouri <alidiouri@gmail.com>

RUN echo 'deb http://ppa.launchpad.net/beineri/opt-qt551-trusty/ubuntu trusty main' >> /etc/apt/sources.list

# install depdencies
RUN apt-get update          &&  \
    DEBIAN_FRONTEND=noninteractive apt-get -y upgrade      &&  \
    DEBIAN_FRONTEND=noninteractive apt-get install -y          \
        software-properties-common                             \
        git                     \
        make                    \
        build-essential         \
        g++                     \
        lib32gcc1               \
        nano                    \
        libc6-i386              \
        python                  \
        python2.7               \
        unzip                   \
        wget                    \
        "^libxcb.*"             \
        libx11-xcb-dev          \
        libglu1-mesa-dev        \
        libxrender-dev          \
        libxi-dev               \
        libssl-dev              \
        libxcursor-dev          \
        libxcomposite-dev       \
        libxdamage-dev          \
        libxrandr-dev           \
        libfontconfig1-dev      \
        libcap-dev              \
        libbz2-dev              \
        libgcrypt11-dev         \
        libpci-dev              \
        libnss3-dev             \
        libxcursor-dev          \
        libxcomposite-dev       \
        libxdamage-dev          \
        libxrandr-dev           \
        libdrm-dev              \
        libfontconfig1-dev      \
        libxtst-dev             \
        libasound2-dev          \
        gperf                   \
        libcups2-dev            \
        libpulse-dev            \
        libudev-dev             \
        libssl-dev              \
        flex                    \
        bison                   \
        ruby                    \
        libicu-dev              \
        libxslt-dev             \
        zlib1g-dev


WORKDIR /root

