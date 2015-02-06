FROM docker.cn/docker/ubuntu
MAINTAINER Liu Dong <ddliuhb@gmail.com>

ADD . /build/

RUN /build/01_change_mirror.sh
RUN /build/01_update.sh
RUN /build/golang/install.sh
RUN /build/99_cleanup.sh

ENV GOLANG_VERSION 1.4.1
ENV PATH /usr/src/go/bin:$PATH
ENV GOPATH /go
ENV PATH /go/bin:$PATH
WORKDIR /go