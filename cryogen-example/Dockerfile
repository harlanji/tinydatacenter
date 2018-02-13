FROM cryogen:8-jdk_1.8_2.8.1

ADD app/project.clj /tmp/app/project.clj
RUN lein deps

RUN rm -rf /tmp/app
ADD app /tmp/app
