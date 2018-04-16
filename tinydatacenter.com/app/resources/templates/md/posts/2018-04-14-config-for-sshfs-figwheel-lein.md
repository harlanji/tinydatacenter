{:title "ClojureScript on RasPi"
 :layout :post
 :author "Harlan Iverson"
 :tags ["blog"]
 }
 
Recently we switched from Tinkerboard back to RasPi3B, the original TinyDC box
we built in Jan/Dec... it's been hosting the website since then, and doing good. We 
returned because the 24x7 [live stream](https://ispooge.com/live.html) came online, 
and it seemed like a fun idea to do work on stream, yet we use use 
the TBoard for other projects that overlap in usage time, sometimes. Ie. 
use TinyDC as the desktop to share at all times, and enhance dev functionality
as needed.
While I can bring the TBoard  over each day before 
I begin the stream, that's been cumbersome. Instead, we can use it to do heavy lifting
for things that are only required while in the thick of development, or similar
activities... and start the stream on our always-on desktop.

So the  TBoard is back online as a build box, to split the load 
between development/UI on our workstation, and compliling/hosting with more resources.
There's been no reinstall, we're using the prior image... but I've setup `sshfs` 
with good options and Figwheel with working options to 
make remote development possible--it's the 
same theory as setting up development in Vagrant, Docker, or AWS. Debuggers 
can be set up to talk to remote hosts, as they mostly operate over sockets.

Here are the useful configs to develop a ClojureScript project remotely.

### 1. Setup

On the server node, SSHFS mount the directory on dev... usually from within `screen`:

```
DEV_IP=192.168.1.7
SERVER_IP=192.168.1.6

# connect to server, create our mount point
ssh $SERVER_IP
mkdir -p $HOME/mnt/uspooge-app
```

Next we can setup our ClojureScript project with the right options to build on
a non-localhost. Inside of `project.clj`, change these options:

```
(defproject ;...
  :cljsbuild {:builds
              [{:id "dev"
                :figwheel {
                  :websocket-host :js-client-host ; connect to the client's provided host
                }}
               {:id "min"
                :compiler {
                  :optimizations :whitespace ; :advanced is better for prod, but too much for Rpi..
                }}]}

  :figwheel {:hawk-options {
               :watcher :polling ; slow but lets us work in docker/ssfhs
             }}
)
```


### 2. Daily use

Open or reconnect screen, session named dev:

```
screen -RAd dev
```

From within screen, mount the filesystem:

```
sshfs \
  pirate@$DEV_IP:p/uspooge-app \
  $HOME/mnt/uspooge-app \
  -o sshfs_sync \
  -o cache_timeout=0 \
  -o idmap=user
```


When it comes to the server side Clojure, we'll probably want to setup nrepl ports and
debug ports. In general, to forward ports via an SSH connection you can add
the `-L` option... eg:

* `ssh -L7888:localhost:7888 hi@tinkerboard`

It's also helpful to have our local SSH agent manage our keys for us throughout
our chain of connections via the `-A` option. We'll go into more depth on this as 
we explore YubiKey and PKI in the near future. I'll also likely write up 
Java debugging and Flight Recorder, now that it's being shipped with OpenJDK.

### Alternatives

Another approach would be to leave all development environments on the build box 
and use `sshfs` to mount them into our local development environment. That's certainly 
not a bad option, but between the two the idea of keeping everything buildable on the 
main workstation and offloading work to the new machine seemed like a good
approach to begin with. It's in line with Vagrant and Docker with builder containers, 
meaning tools have supported configuration options to support it, so it's a 
good approach.