#!/bin/bash

source scripts/env.sh


docker run -d --restart always  \
  --name $NAME_STATIC \
  -p $STATIC_PORT:9090 \
  $IMAGE_STATIC
