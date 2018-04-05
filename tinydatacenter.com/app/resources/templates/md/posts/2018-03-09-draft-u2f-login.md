{:title "System login with U2F"
 :layout :episode
 :episode-yt-video-id "AxZxi9M4Ib0"

 :episode-prereqs ["2018-02-04-webserver.html"]
 :tags ["episode-wip"]}


## Status

In this episode I spend about an hour figuring how to install U2F on the Tinkerboard. This allows us to require
the physical posession of a hardware token. It can be set to sufficient or required; required creates an interesting
scenario for SSH access, which is that the token must sill physically be inserted into the device. But touching it does
allow an SSH session to connect. For now personally I've left it optional, pending more usage.

There may be a way to make optional for SSH connections, given some other second factor (eg. OTP)... I also found mention 
of a patch of OpenSSH but didn't explore this.




## Needs

* 1 Tinkerboard (RasPi untested)
* 1+ YubiKeys with U2F (1x tested with blue)