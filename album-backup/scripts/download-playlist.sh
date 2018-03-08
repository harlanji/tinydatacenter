#!/bin/bash

PLAYLIST=${1:-"PLD5lYPY-uZpq7x2zRIiULo2oZ-tWs2lPx"}
DIR=${2:-"media"}

mkdir -p $DIR
cd $DIR

youtube-dl \
  --verbose \
  --playlist-start 1 \
  --playlist-end 1 \
  --add-metadata \
  --no-mark-watched \
  --yes-playlist \
  --write-all-thumbnails \
  --ignore-errors \
  --all-subs \
  --no-call-home \
  --restrict-filenames \
  "https://www.youtube.com/playlist?list=$PLAYLIST"


# very large and detailed
#  --write-info-json \