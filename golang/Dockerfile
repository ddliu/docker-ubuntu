# see: https://github.com/docker-library/golang
FROM ubuntu:14.04
MAINTAINER Liu Dong <ddliuhb@gmail.com>

RUN sed -i "s/archive\.ubuntu\.com/mirrors.aliyun.com/g" /etc/apt/sources.list
RUN apt-get update && \
    apt-get install -y \
        ca-certificates curl gcc libc6-dev make \
        bzr git mercurial \
        --no-install-recommends && \
    apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

ENV GOLANG_VERSION 1.4.1

# download from golangtc for better speed
RUN curl -sSL http://golangtc.com/static/go/go$GOLANG_VERSION.src.tar.gz \
        | tar -v -C /usr/src -xz

RUN cd /usr/src/go/src && ./make.bash --no-clean 2>&1

RUN mkdir -p /go/src

COPY go-wrapper /usr/local/bin/

ENV PATH /usr/src/go/bin:$PATH
ENV GOPATH /go
ENV PATH /go/bin:$PATH
WORKDIR /go