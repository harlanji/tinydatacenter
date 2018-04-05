#!/bin/bash

source scripts/env.sh

docker build -f Dockerfile.static -t $IMAGE_STATIC .
