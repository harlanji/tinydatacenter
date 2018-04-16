{:title "Using RasPi for Video"
 :layout :post}

The RasPi has great hardware for working with video. Sofar we're able to transcode
three streams and run the Pi camera at 30fps, encode and deliver with a few secods
of latency, even when accounting for intermediate CDN caching. More details
[here](/2018-04-08-ispooge-live.html).

This article is a living document... as of now this is what we use to go live.

Based on the nginx-rtmp config here: [GitHub](https://github.com/harlanji/tinydatacenter/blob/c0e5db66198fede8bbf9ff6f0ba6a4cb8ea60ddb/rtmp-proxy-docker/nginx-ispooge.conf)

720:

`./ffmpeg -hide_banner -y -codec:v h264_mmal -i rtmp://localhost:1935/ispoogedaily_source_720/ispoogedaily_720 -c:a copy -c:v h264 -profile:v main -sc_threshold 0 -g 60 -keyint_min 50 -vf scale=w=1280:h=720:force_original_aspect_ratio=decrease -b:v 6000k -maxrate 6420k -bufsize 9000k -f flv rtmp://localhost:1935/ispoogedaily_local/ispoogedaily_720`

360:

`./ffmpeg -hide_banner -y -codec:v h264_mmal -i rtmp://localhost:1935/ispoogedaily_source_360/ispoogedaily_360 -c:a copy -c:v h264 -profile:v main -sc_threshold 0 -g 60 -keyint_min 50 -vf scale=w=640:h=360:force_original_aspect_ratio=decrease -b:v 3000k -maxrate 3210k -bufsize 4500k -f flv rtmp://localhost:1935/ispoogedaily_local/ispoogedaily_360`

240:

`./ffmpeg -hide_banner -y -codec:v h264_mmal -i rtmp://localhost:1935/ispoogedaily_source_240/ispoogedaily_240 -c:a copy -level:v 1.0 -c:v h264 -profile:v main -sc_threshold 0 -g 60 -keyint_min 60 -vf scale=w=426:h=240:force_original_aspect_ratio=decrease -b:v 800k -maxrate 1000k -bufsize 3000k -f flv rtmp://localhost:1935/ispoogedaily_local/ispoogedaily_240`


live twitch:

live youtube:


https://gist.github.com/mikoim/27e4e0dc64e384adbcb91ff10a2d3678

```
./ffmpeg -i rtmp://localhost:1935/ispoogedaily_local/ispoogedaily_720 \
  -c:v libx264 -preset slow -profile:v high \
  -crf 18 -coder 1 -pix_fmt yuv420p -movflags \
  +faststart -g 30 -bf 2 -c:a aac -b:a 384k \
  -profile:a aac_low -f flv rtmp://a.live.youtube.com/li...FIXME
```

number of slices:

`find /tmp/hls/ispooge.com -name *.ts  | wc -l`


number of streams:

`find /tmp/hls/ispooge.com -name *.m3u8 | wc -l`

check tmpfs (where segments are written):

`df -h | grep /tmp$`



top right small view:

* screencast

`raspivid -p 960,22,320,180 -t 0 -w 320 -h 180 -fps 30 -hf -b 1048576`


top left large view:

* whiteboard

`raspivid -p 0,20,960,540 -t 0 -w 960 -h 540 -fps 30 -b 8388608`

* record

`raspivid -p 0,20,960,540 -t 0 -w 960 -h 540 -fps 30 -b 8388608 -o sample.h264`

