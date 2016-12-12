#!/bin/bash
# Put in crontab -e:
# 0 0 1 JAN,MAR,MAY,JUL,SEP,NOV * /opt/nk_nginx/renew-letsencrypt.sh

mkdir -p www/letsencrypt
letsencrypt certonly --webroot -w www/letsencrypt -d $1

