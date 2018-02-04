{:title "Docker"
 :layout :episode
 :video-url "/media/tinydc/docker/out.m3u8"
 :yt-episode-video-id "0S9rePglH2Y"
 :page-index 40
 :navbar? false}


Docker is a tool that lets people create software packages that can be run on any system that supports Docker and the same processor architecture.


### Needs

* Website (connected to Internet optional)

### Generate

1. Create a Dockerfile 


The Dockerfile picks a base "image" and adds the necessary files needed to run the website. The base image should have the same software that you used to create your website with. After the first website, usually you create a Dockerfile right away that resembles a project that you've created before.


```
FROM rpi-whatever
WORKDIR /www
ADD index.html index.html
CMD ["python", "-m" ,"SimpleHTTPServer", "9090", "."]
```


### Operate

2. Build website with docker

`docker build -t mysite.com .`

3. Start website with docker


```
docker run -d --restart always \
--name mysite.com-www \

mysite.com
```

This is a long command, so it's useful to put it into a script file. Let's call it `start.sh`.

Script files have two extra parts, there is a top line that tells it which command to use to run (what you normally interact with on the screen is called `bash`).


```
#!/bin/bash

[the commands]
```

And then run

`chmod a+x start.sh`

### Destroy

4. Stop docker process

`docker rm -f mysite.com-www`

