#!/bin/sh

letsencrypt renew --webroot -w www/letsencrypt
#docker exec -ti nk_nginx nginx -s reload
