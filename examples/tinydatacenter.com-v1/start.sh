#!/bin/bash

docker run -d --restart always  --name website-dev -p 80:9090 website
