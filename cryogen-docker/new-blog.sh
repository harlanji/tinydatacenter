#!/bin/bash

mkdir app

docker run \
  --mount type=bind,target=/tmp/app,source=$PWD/app \
  clojure-1.8/cryogen \
  lein -o new cryogen app --force --to-dir /tmp/app

sudo chown -R pirate:pirate app
