#!/bin/bash

source scripts/env.sh

docker build -t $IMAGE_STATIC -f Dockerfile.static .
