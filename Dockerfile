FROM ubuntu:14.04
MAINTAINER Liu Dong <ddliuhb@gmail.com>

RUN sed -i "s/archive\.ubuntu\.com/mirrors.aliyun.com/g" /etc/apt/sources.list
RUN apt-get update

# install and setup...
RUN apt-get install SOMETHING

RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*