FROM docker.cn/docker/ubuntu
MAINTAINER Liu Dong <ddliuhb@gmail.com>

ADD . /build/

RUN /build/01_change_mirror.sh
RUN /build/01_update.sh
RUN /build/mysql/install.sh
RUN /build/99_cleanup.sh

ENTRYPOINT ["/entrypoint.sh"]

VOLUME /var/lib/mysql
EXPOSE 3306
CMD ["mysqld"]