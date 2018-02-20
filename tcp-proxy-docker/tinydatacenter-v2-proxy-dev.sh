#!/bin/bash

# starts an HTTP proxy that will be detected by the nginx
# http/https proxy service.
#
# v1 - 2018-01-01

HOSTNAME=broken.tinydatacenter.com
IP=192.168.1.7
PORT=23000

DOMAINS=$HOSTNAME
IMAGE=tcp-proxy:2

docker run -d --restart always --name "$HOSTNAME-proxy" \
  -h $HOSTNAME \
  -e "VIRTUAL_HOST=$DOMAINS" \
  -e "BACKEND_HOST=$IP" \
  -e "BACKEND_PORT=$PORT" \
  $IMAGE
