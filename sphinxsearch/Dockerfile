FROM ubuntu:14.04
MAINTAINER Liu Dong <ddliuhb@gmail.com>
RUN sed -i "s/archive\.ubuntu\.com/mirrors.aliyun.com/g" /etc/apt/sources.list
RUN apt-get update && apt-get install -y sphinxsearch && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN mkdir -p /var/run/sphinx/
CMD /usr/bin/indexer -c /etc/sphinxsearch/sphinx.conf --all && searchd -c /etc/sphinxsearch/sphinx.conf --nodetach
EXPOSE 9312 9306
VOLUME /var/lib/sphinx/data