FROM lein:8-jdk_1.8_2.8.1

WORKDIR /tmp/app

RUN lein new cryogen app --force --to-dir /tmp/app
#RUN lein uberjar

RUN apt-get update
RUN apt-get install -y ruby ruby-integration inotify-tools
RUN gem install --no-ri --no-rdoc sass -v 3.3.14


# uncomment to remove default site. with compression I think it should be fine to leave for default testing
# RUN rm -rf /tmp/app

CMD ["lein", "-o", "ring", "server-headless"]
