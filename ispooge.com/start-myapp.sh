#!/bin/bash

source env-myapp.sh


docker run \
  --name $NAME \
  --restart always \
  --mount type=bind,source=/tmp/hls/ispooge.com,target=/usr/share/nginx/html/hls,readonly \
  --mount type=bind,source=$HOME/ispooge-media,target=/usr/share/nginx/html/media,readonly \
  -h $VIRTUAL_HOST \
  -p 80:80 \
  -d \
  -e VIRTUAL_HOST=$VIRTUAL_HOST \
  $IMAGE
