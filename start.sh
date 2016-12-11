#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
docker rm nk_nginx > /dev/null 2>&1
docker run -d --name nk_nginx --net=host --restart always \
	-v /:/hostfs:ro \
	-v $DIR/logs:/var/log/nginx \
	-v $DIR/conf.d:/etc/nginx/conf.d:ro \
	-v $DIR/www:/etc/nginx/www:ro \
	-v /etc/localtime:/etc/localtime:ro \
	-v /etc/letsencrypt:/etc/letsencrypt:ro \
	nginx:1.11.5-alpine

