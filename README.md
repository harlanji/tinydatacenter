# TinyDataCenter

This repo is mean to be cloned onto a new RasPi or supported SBC to help with application creation,
operations, and perhaps more. 

## Known use cases

* Informational website
* Live streaming and vodcast
* Load balancer

The focus is on [POSSE](https://indieweb.org/POSSE)--publish on your own site, syndicate everywhere--using cloud services
such as CDNs to acieve scale and reliability.


## How to use this repo


This is a work in progress. It's designed for people with no computing experience and a teacher.
It intentionally avoids some of the common "industry grade" practices, with the understanding 
that those will come in later stages. Instead it focuses on creating a small application that
works as the soverign master copy, aka. origin, that feeds into scalable cloud services.
For example a small business owner may tinker with an inexpensive SBC to build a working concept
that functions until they can hire a pragmatic engineer to take over the project.

The respository can be well understood by reading the history of short commit messages for a
project of interest. The TinyDataCenter website contains pages with principles that are used.
In short, a person comfortable working in an auto garage should be comfortable with this project.

See the [website](https://tinydatacenter.com) for more detailed info--source contained within
this repository as well, so it can be built and used locally.


## What's here

### Docker images

* lein-docker - base for Clojure projects on JDK 1.8
* cryogen-docker - base for [http://cryogen.com](Cryogen) website projects
* http-proxy-docker - HTTP server with secure CloudFlare support
* tcp-proxy-docker - forwards connections to other ports/machines, with examples for HTTPS
* rtmp-proxy-docker - captures streaming video from OBS/ffmpeg; creates recording and HLS segments ready to serve

### Examples

* tinydatacenter.com - the website for this project, with media served
* cryogen-example - new Cryogen project with script for new blog
* examples/ispooge.com-v2 - an entertainment/news website, with media and HLS served. now [here](/harlanji/ispooge)
* examples/ispooge.com, tinydatacenter.com - simple websites
* examples/tinydatacenter.com-v1 - the original website for this project
* examples/harlanji.com - the author website. now [here](/harlanji/harlanji-web)

## State

Requires elbow grease but these are the actual repositories that power the websites. Contact me to book an appointment.

Vodcast operations are documented in `ispooge.com-v2/doc/operations.md`

# Contact

* social @ harlanji d0t com or (four one f1ve).93 seven.7four67 - leave a message, I'll get back to you. call > email > text.
