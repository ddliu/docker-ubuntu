FROM ubuntu:14.04
MAINTAINER Liu Dong <ddliuhb@gmail.com>

RUN sed -i "s/archive\.ubuntu\.com/mirrors.aliyun.com/g" /etc/apt/sources.list
RUN apt-get update && \
    apt-get install SOMETHING && \
    apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*