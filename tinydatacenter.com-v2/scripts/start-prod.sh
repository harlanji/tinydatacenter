#!/bin/bash

docker run -d --restart always  --name website-v2-static-prod -p 80:9090 website-v2-static
