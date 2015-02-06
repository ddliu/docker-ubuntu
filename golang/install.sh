#!/bin/bash -e
# https://github.com/docker-library/golang

# SCMs for "go get", gcc for cgo
apt-get install -y \
        ca-certificates curl gcc libc6-dev make \
        bzr git mercurial \
        --no-install-recommends

export GOLANG_VERSION=1.4.1

curl -sSL http://golangtc.com/static/go/go$GOLANG_VERSION.src.tar.gz \
        | tar -v -C /usr/src -xz

cd /usr/src/go/src && ./make.bash --no-clean 2>&1

mkdir -p /go/src

cp /build/go-wrapper /usr/local/bin/
