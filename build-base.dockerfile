#!/usr/bin/env docker build --rm --compress -t pvtmert/gcc-arm:build-base -f

FROM debian:stretch

RUN apt update && \
	apt install -y xz-utils wget curl nano less zip \
	build-essential qemu-user-binfmt \
	&& apt clean
