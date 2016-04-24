FROM ubuntu:16.04

RUN \

	apt-get update && \

	apt-get install -y autoconf automake binutils-dev build-essential cmake g++ gawk git \
	libboost-dev libboost-filesystem-dev libboost-program-options-dev libboost-regex-dev \
	libboost-system-dev libboost-thread-dev libboost-context-dev libbz2-dev libc-client-dev libldap2-dev \
	libc-client2007e-dev libcap-dev libcurl4-openssl-dev libdwarf-dev libelf-dev \
	libexpat-dev libgd2-xpm-dev libgoogle-glog-dev libgoogle-perftools-dev libicu-dev \
	libjemalloc-dev libmcrypt-dev libmemcached-dev libmysqlclient-dev libncurses-dev \
	libonig-dev libpcre3-dev libreadline-dev libtbb-dev libtool libxml2-dev zlib1g-dev \
	libevent-dev libmagickwand-dev libinotifytools0-dev libiconv-hook-dev libedit-dev \
	libiberty-dev libxslt1-dev ocaml-native-compilers libsqlite3-dev libyaml-dev libgmp3-dev \
	gperf libkrb5-dev libnotify-dev && \

	# Hack until HHVM will be able to find it properly
	ln -s /usr/lib/x86_64-linux-gnu/libtbb.so.2 /usr/lib/libtbb.so && \

	rm -rf /var/lib/apt/lists/* && \

	locale-gen

COPY build /bin/build

WORKDIR /hhvm

CMD build
