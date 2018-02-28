#!/bin/bash

source scripts/env.sh

docker run -d --restart unless-stopped \
  -v $PWD/app:/tmp/app \
  -v $MEDIA:/tmp/app/resources/public/media:ro \
  --name $NAME \
  -p $DEV_PORT:3000 \
  $IMAGE
