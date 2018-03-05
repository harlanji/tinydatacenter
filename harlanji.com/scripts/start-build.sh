#!/bin/bash

source scripts/env.sh

docker run -d --restart always \
-v $PWD/app:/tmp/app \
--name $NAME -p $DEV_PORT:3000 \
$IMAGE
