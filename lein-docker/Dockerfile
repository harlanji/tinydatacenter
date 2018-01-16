FROM openjdk:8-jdk

#RUN apt-get update && apt-get install -y wget && rm -rf /var/lib/apt/lists/*

# workaround for java
#RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure

ADD lein.sh    /usr/local/bin/lein

WORKDIR /tmp/app
ADD project.clj /tmp/app

RUN lein deps
RUN rm project.clj

CMD ["lein", "run"]
