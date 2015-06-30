#!/bin/bash
echo "Asia/Shanghai" > /etc/timezone
dpkg-reconfigure -f noninteractive tzdata
/sync_cron.sh &
cron -f