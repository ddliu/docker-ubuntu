# see: https://github.com/docker-library/mysql
FROM docker.cn/docker/ubuntu
MAINTAINER Liu Dong <ddliuhb@gmail.com>

RUN groupadd -r mysql && useradd -r -g mysql mysql
RUN sed -i "s/archive\.ubuntu\.com/mirrors.aliyun.com/g" /etc/apt/sources.list
RUN apt-get update
RUN { \
    echo mysql-community-server mysql-community-server/data-dir select ''; \
    echo mysql-community-server mysql-community-server/root-pass password ''; \
    echo mysql-community-server mysql-community-server/re-root-pass password ''; \
    echo mysql-community-server mysql-community-server/remove-test-db select false; \
} | debconf-set-selections

RUN apt-get install -y mysql-server-5.6
RUN rm -rf /var/lib/mysql
RUN mkdir -p /var/lib/mysql

RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf
COPY docker-entrypoint.sh /entrypoint.sh

RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

ENTRYPOINT ["/entrypoint.sh"]

VOLUME /var/lib/mysql
EXPOSE 3306
CMD ["mysqld"]