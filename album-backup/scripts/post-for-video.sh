#!/bin/bash

# example, convert all mp4 files in media/ directory:
#
# find media -type f -name "*.mp4" | xargs -n1 scripts/post-for-video.sh
#

vid=$1
base=${vid%????}
id=$(basename $base)

hls=${base}
meta=${base}.txt
  
if [ ! -d $hls ]; then
 echo "transcode: "
 scripts/transcode-video.sh $vid $hls
fi

if [ ! -f $meta ]; then
 echo "extract meta:: "
 scripts/extract-metadata.sh $vid $meta
fi

rawdate=$(awk -F "=" '/date/ {print $2}' $meta)
date="${rawdate:0:4}-${rawdate:4:2}-${rawdate:6:2}"


posts="app/resources/templates/md/posts"
post="${posts}/${date}-${id}.md"

scripts/make-video-page.sh $base > $post

echo "wrote $post"

exit 0