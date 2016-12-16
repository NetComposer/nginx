#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

docker rm nginx > /dev/null 2>&1

docker run \
	-d \
	--name nginx \
	--network nginx \
	--restart unless-stopped \
	-p 80:80 \
	-p 443:443 \
	-v /:/hostfs:ro \
	-v nginx_conf:/etc/nginx/conf.d:ro \
	-v $DIR/www:/etc/nginx/www:ro \
	-v /etc/localtime:/etc/localtime:ro \
	-v /etc/letsencrypt:/etc/letsencrypt:ro \
	nginx:1.11.5-alpine

#	-v nginx_logs:/var/log/nginx \
