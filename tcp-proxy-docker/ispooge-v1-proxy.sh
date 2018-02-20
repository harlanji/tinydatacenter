#!/bin/bash

# starts an HTTP proxy that will be detected by the nginx
# http/https proxy service.
#
# v1 - 2018-01-01

HOSTNAME=ispooge.com
IP=192.168.1.8
PORT=80

DOMAINS=$HOSTNAME,www.$HOSTNAME,broken.$HOSTNAME
IMAGE=tcp-proxy

docker run -d --restart always --name "$HOSTNAME-proxy" -e "BACKEND_HOST=$IP" -e "BACKEND_PORT=$PORT" -e "VIRTUAL_HOST=$DOMAINS" -h $HOSTNAME $IMAGE
