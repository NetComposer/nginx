#!/bin/sh

letsencrypt renew
docker exec -ti nk_nginx nginx -s reload
