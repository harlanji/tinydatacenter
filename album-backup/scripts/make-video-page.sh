#!/bin/bash

VIDEO_BASENAME="$1"

VIDEO="$VIDEO_BASENAME.mp4"
META="$VIDEO_BASENAME.txt"
THUMBNAIL="$VIDEO_BASENAME.jpg"
HLS="$VIDEO_BASENAME/playlist.m3u8"

TITLE=$(awk -F "=" '/title/ {print $2}' $META)
ARTIST=$(awk -F "=" '/artist/ {print $2}' $META)
DESCRIPTION=$(awk -F "=" '/description/ {print $2}' $META)

ENVSUBST="/usr/local/Cellar/gettext/0.19.8.1/bin/envsubst"

TEMPLATE=app/resources/templates/md/video-page.md

cat $TEMPLATE | \
DESCRIPTION=$DESCRIPTION \
ARTIST=$ARTIST \
TITLE=$TITLE \
THUMBNAIL=$THUMBNAIL \
HLS=$HLS \
$ENVSUBST