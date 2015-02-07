# docker-ubuntu

Snippets and sample Dockerfiles to help build Ubuntu based images *faster*.

## Snippets

### Use a faster Docker registry

```
FROM docker.cn/docker/ubuntu
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

## Sample Images

- golang
- mysql
- nginx
- php
- nginx-php