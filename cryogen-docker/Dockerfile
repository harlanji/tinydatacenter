#FROM clojure-1.8/lein

FROM clojure-1.8/lein:openjdk

WORKDIR /tmp/app

RUN lein new cryogen app --force --to-dir /tmp/app
RUN lein uberjar

# uncomment to remove default site. with compression I think it should be fine to leave for default testing
# RUN rm -rf /tmp/app

CMD ["lein", "-o", "ring", "server-headless"]
