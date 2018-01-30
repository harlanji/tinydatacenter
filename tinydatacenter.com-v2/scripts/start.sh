#!/bin/bash

docker run -d --restart always \
--mount type=bind,source=$PWD/app,target=/tmp/app \
--mount type=bind,source=$HOME/media,target=/tmp/app/resources/public/media,readonly \
--name website-v2-dev -p 23000:3000 website-v2
