# FROM fast_docker_registry
FROM docker.cn/docker/ubuntu
MAINTAINER Liu Dong <ddliuhb@gmail.com>

ADD * /build/

# Your custom scripts
# RUN /build/01_update.sh
# RUN /build/99_cleanup.sh