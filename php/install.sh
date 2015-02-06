#!/bin/bash -e

# install php and modules
apt-get install -y \
    php5 php5-cli php5-fpm \
    php5-memcached php5-redis php5-mcrypt \
    php5-curl

# change default listen settings
# TODO