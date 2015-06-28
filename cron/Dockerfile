# see: https://github.com/docker-library/golang
FROM ubuntu:14.04
MAINTAINER Liu Dong <ddliuhb@gmail.com>

RUN sed -i "s/archive\.ubuntu\.com/mirrors.aliyun.com/g" /etc/apt/sources.list
RUN apt-get update
RUN apt-get install -y curl && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

ADD bootstrap.sh /bootstrap.sh
ADD sync_cron.sh /sync_cron.sh
RUN chmod +x /bootstrap.sh /sync_cron.sh

ENTRYPOINT /bootstrap.sh 
VOLUME /crontab