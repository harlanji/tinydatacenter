FROM clojure-1.8/cryogen:openjdk

ADD app/project.clj /tmp/app/project.clj
RUN lein deps

RUN rm -rf /tmp/app
ADD app /tmp/app
