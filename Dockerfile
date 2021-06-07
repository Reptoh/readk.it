FROM node:13-alpine

RUN apk update \
	&& apk add --no-cache \
	autoconf \
	automake \
	file \
	build-base \
	nasm \
	musl \
	libpng-dev \
	zlib-dev \
	zip \
    unzip \
	python \
	python-dev \
	ruby \
	ruby-bundler \
	ruby-dev \
	ruby-rdoc \
	g++ \
	gcc \
	libxslt-dev \
	make \
	py-pip \
	git \
	&& rm -rf /var/lib/apk/*
	
RUN pip install lxml
RUN gem update --system && gem install compass --no-document
RUN npm install -g grunt

RUN mkdir -p /readk.it
WORKDIR /readk.it
COPY ./ .

RUN npm install

ENTRYPOINT grunt