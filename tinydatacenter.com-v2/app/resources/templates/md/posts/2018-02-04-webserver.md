{:title "Webserver"
 :layout :episode
 :video-url "/media/tinydc/webserver/out.m3u8"
 :yt-episode-video-id "RPyHFrn37Qc"
 :tags ["episode" "episode-wip" "video"]}



# Simple website

(Not scalable)


### Needs

* Tiny Computer


### Generate

1. Download and write RasPi SD card image


`xz -e hypriot-1.7.0.img.xz`

`dd if=hypriot-1.7.0.img of=/dev/sda bs=128KB conv=fsync`

When this completes, the card is ready to boot up the RasPi.

2. Insert SD card into RasPi, boot up, and configure

3. Create a new directionctory with index file and start script


`cp tinydatacenter/starter-website.com mysite.com`



`cd mysite.com`

`nano index.html`

Nano is a text editor similar to MS Word, except it runs without a cursor or windows that can be moved around. It's called a "Command line tool"


If this is too uncomfortable we can skip sraight to installing a [desktop](desktop.html) system so that you can use a normal window based text editor.


1. Create initial files
  * [GH commit](https://github.com/harlanji/tinydatacenter/commit/e370eb5d5dfd8af3aba7cb5418defd2bb4081f05)
2. Create scripts to start and stop the server
  * [GH commit](https://github.com/harlanji/tinydatacenter/commit/c7f4bf429786fdc5f7b948df5012a4541c275ea7)



### Operate

4. Start website with start script




5. Make a change
6. Rebuild and restart website

### Destroy

7. Stop script
