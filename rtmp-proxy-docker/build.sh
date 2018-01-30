#!/bin/bash

if [ ! -d nginx-rtmp-docker ]; then
  git clone https://github.com/tiangolo/nginx-rtmp-docker
fi

docker build -t  tiangolo/nginx-rtmp nginx-rtmp-docker

docker build -t nginx-rtmp .
