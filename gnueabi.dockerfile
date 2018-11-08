#!/usr/bin/env docker build --rm --compress -t pvtmert/gcc-arm:gnueabi -f

FROM pvtmert/gcc-arm:build-base

RUN dpkg --add-architecture armel

RUN apt update && \
	apt install -y gcc-arm-linux-gnueabi binutils-arm-linux-gnueabi \
	libc6-dev:armel libc6-dev-armel-cross libc-dev:armel \
	libz-dev:armel libssl-dev:armel libreadline-dev:armel \
	libc6-armel-cross linux-libc-dev-armel-cross \
	&& apt clean

