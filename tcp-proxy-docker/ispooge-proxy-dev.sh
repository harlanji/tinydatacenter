#!/bin/bash

# starts an HTTP proxy that will be detected by the nginx
# http/https proxy service.
#
# v1 - 2018-01-01

HOSTNAME=v2.ispooge.com
IP=192.168.1.11
PORT=33080

DOMAINS=$HOSTNAME
IMAGE=tcp-proxy:2

NAME="$HOSTNAME-proxy"

docker run -d --restart always --name $NAME -e "BACKEND_HOST=$IP" -e "BACKEND_PORT=$PORT" -e "VIRTUAL_HOST=$DOMAINS" -h $HOSTNAME $IMAGE
