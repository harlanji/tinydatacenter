#!/bin/bash

mkdir app

docker run \
  -v $PWD/app:/tmp/app \
  cryogen:8-jdk_1.8_2.8.1 \
  lein -o new cryogen app --force --to-dir /tmp/app

sudo chown -R pirate:pirate app
