#!/bin/bash

source env-proxy.sh

docker run \
  -d \
  --name $NAME-dev \
  --restart always \
  -h $NAME-dev \
  -p 680:80 \
  -p 643:443 \
  -v /var/run/docker.sock:/tmp/docker.sock:ro \
  -v $HOME/harlanji.com/certs:/etc/nginx/certs:ro  \
  $IMAGE



#  -v /etc/nginx/nginx.conf:$HOME/harlanji.com/rtmp-proxy/nginx_ispoogedaily.conf:ro \
