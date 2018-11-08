#!/usr/bin/env docker build --rm --compress -t pvtmert/gcc-arm:gnueabihf -f

FROM pvtmert/gcc-arm:build-base

RUN dpkg --add-architecture armhf

RUN apt update && \
	apt install -y gcc-arm-linux-gnueabihf binutils-arm-linux-gnueabihf \
	libc6-dev:armhf libc6-dev-armhf-cross libc-dev:armhf \
	libz-dev:armhf libssl-dev:armhf libreadline-dev:armhf \
	libc6-armhf-cross linux-libc-dev-armhf-cross \
	&& apt clean

