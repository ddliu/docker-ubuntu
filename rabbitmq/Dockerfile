# see: https://github.com/docker-library/rabbitmq
FROM ubuntu:14.04
MAINTAINER Liu Dong <ddliuhb@gmail.com>

RUN sed -i "s/archive\.ubuntu\.com/mirrors.aliyun.com/g" /etc/apt/sources.list
RUN apt-get update && apt-get install -y rabbitmq-server --no-install-recommends && rm -rf /var/lib/apt/lists/*

# /usr/sbin/rabbitmq-server has some irritating behavior, and only exists to "su - rabbitmq /usr/lib/rabbitmq/bin/rabbitmq-server ..."
ENV PATH /usr/lib/rabbitmq/bin:$PATH

# get logs to stdout (thanks to http://www.superpumpup.com/docker-rabbitmq-stdout for inspiration)
# TODO figure out what we'd need to do to add "(sasl_)?" to this sed and have it work ("{"init terminating in do_boot",{rabbit,failure_during_boot,{error,{cannot_log_to_tty,sasl_report_tty_h,not_installed}}}}")
RUN sed -E 's!^(\s*-rabbit\s+error_logger)\s+\S*!\1 tty!' /usr/lib/rabbitmq/lib/rabbitmq_server-*/sbin/rabbitmq-server > /tmp/rabbitmq-server \
    && chmod +x /tmp/rabbitmq-server \
    && mv /tmp/rabbitmq-server /usr/lib/rabbitmq/lib/rabbitmq_server-*/sbin/rabbitmq-server

RUN echo '[{rabbit, [{loopback_users, []}]}].' > /etc/rabbitmq/rabbitmq.config

VOLUME /var/lib/rabbitmq

COPY docker-entrypoint.sh /
ENTRYPOINT ["/docker-entrypoint.sh"]

EXPOSE 5672
CMD ["rabbitmq-server"]
