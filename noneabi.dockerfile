#!/usr/bin/env docker build --rm --compress -t pvtmert/gcc-arm:noneabi -f

FROM pvtmert/gcc-arm:build-base

RUN apt install -y gcc-arm-none-eabi \
	libc6-armhf-cross linux-libc-dev-armhf-cross \
	libc6-armel-cross linux-libc-dev-armel-cross \
	libc6-dev-armhf-cross libc6-dev-armel-cross
