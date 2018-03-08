#!/bin/bash

# example, convert all mp4 files in media/ directory:
#
# find media -type f -name "*.mp4" | xargs -n1 scripts/extract-audio.sh
#
ffmpeg -i $1 -vn -acodec copy $2

exit 0
