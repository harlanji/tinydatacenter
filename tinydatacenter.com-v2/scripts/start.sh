#!/bin/bash

docker run -d --restart always --mount type=bind,source=$PWD/app,target=/tmp/app --name website-v2-dev -p 23000:3000 website-v2
