#!/bin/bash

source scripts/env.sh


docker run -d --restart unless-stopped \
  --name $NAME_STATIC \
  -p $PORT_STATIC:9090 \
  -v $MEDIA:/var/www/html/media:ro \
  $IMAGE_STATIC
