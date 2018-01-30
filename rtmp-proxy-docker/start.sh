#!/bin/bash


if [ ! -d $HOME/rec ]; then
  mkdir $HOME/rec
fi

if [ ! -d /tmp/hls/ispooge.com ]; then
  mkdir -p /tmp/hls/ispooge.com
fi


docker run \
 --name rtmp-proxy \
 -d --restart always \
 -p 1935:1935 \
 --mount type=bind,source=/tmp/hls/ispooge.com,target=/tmp/hls/ispooge.com \
 --mount type=bind,source=$HOME/rec,target=/tmp/rec \
nginx-rtmp 
