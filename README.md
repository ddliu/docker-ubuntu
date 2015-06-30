# docker-ubuntu

Snippets and sample Dockerfiles to help build Ubuntu based images *faster*.

## Snippets

### Use a faster Docker registry

```
FROM docker.cn/docker/ubuntu:14.04
```

### Use a faster Ubuntu mirror

```
RUN sed -i "s/archive\.ubuntu\.com/mirrors.aliyun.com/g" /etc/apt/sources.list
```

### Update Ubuntu packages

```
RUN apt-get update
```

### Cleanup

```
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
```

### Keep container running

```
CMD tail -f /dev/null
```

### Change Timezone

```
RUN echo "Asia/Shanghai" > /etc/timezone
RUN dpkg-reconfigure -f noninteractive tzdata
```

## Tips

### Tag an image from non-official registry

```
docker pull dl.dockerpool.com:5000/ubuntu:14.04
docker tag dl.dockerpool.com:5000/ubuntu:14.04 ubuntu:14.04
```

```
docker pull docker.cn/docker/ubuntu:14.04
docker tag docker.cn/docker/ubuntu:14.04 ubuntu:14.04
```

## Sample Images

- cron
- golang
- mysql
- nginx
- php-fpm
- nginx-php
- data
- redis
- sphinxsearch
- elasticsearch

## Get

### GIT

```
git clone https://github.com/ddliu/docker-ubuntu
```

### Download

```
wget -qO- https://github.com/ddliu/docker-ubuntu/archive/master.tar.gz | tar xvz --strip-components 1 -C ./docker-ubuntu
```