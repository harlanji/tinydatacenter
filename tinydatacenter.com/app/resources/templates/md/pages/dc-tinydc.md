{:title "DC: TinyDC"
 :layout :page
 :page-index 1700
 :navbar? false}
 
* 2x raspi 3 - load balancer, webhost+livestream workstation
* tinkerboard - workstation #2 / extension
* 8 port gigabit switch
* 6 port USB hub
* 4 layer SBC tower
* 6x microusb cables for power
* APC ups

On the load balancer box is humble author's website. It's some simple static
assets using the same web engine to publish posts and have some info pages.

On the webhost+workstation box is a static docker image that serves as the 
origin for tinydatacenter.com which is delivered by CloudFlare--between is 
a gigabit fiber home Internet connection.

The livestream workstation is on 24x7 with HDMI video+audio piped into an IPTV
box that is published via (iSpooge)[/dc-ispooge.html] and syndicated out to other
networks when I turn on syndication. 