FROM clojure-1.8/cryogen:openjdk

RUN rm -rf /tmp/app
ADD app /tmp/app

RUN lein uberjar

#CMD ["java", "-jar", "target/app.jar"]
