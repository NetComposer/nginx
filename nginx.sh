#!/bin/bash
# -s reload
# -s stop
# -t
# -V

docker exec -ti nk_nginx nginx $*

