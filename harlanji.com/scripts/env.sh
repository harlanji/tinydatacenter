#!/bin/bash

# use with source

IMAGE=harlanji-build
NAME=harlanji-build
DEV_PORT=34000
STATIC_PORT=34080


DOMAIN=harlanji.com
HOSTS=#$DOMAIN


NAME_STATIC=harlanji-static
IMAGE_STATIC_LOCAL=harlanji-static

IMAGE_STATIC=docker-registry.local:5000/harlanji.com/harlanji-static:1
