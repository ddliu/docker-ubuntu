#!/bin/bash -e
# https://github.com/docker-library/mysql

{ \
    echo mysql-community-server mysql-community-server/data-dir select ''; \
    echo mysql-community-server mysql-community-server/root-pass password ''; \
    echo mysql-community-server mysql-community-server/re-root-pass password ''; \
    echo mysql-community-server mysql-community-server/remove-test-db select false; \
} | debconf-set-selections

apt-get install -y mysql-server
rm -rf /var/lib/mysql
mkdir -p /var/lib/mysql

sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf