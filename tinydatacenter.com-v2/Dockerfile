FROM clojure-1.8/cryogen:openjdk

RUN rm -rf /tmp/app
ADD app /tmp/app
COPY app-static/* /tmp/app/resources/public

RUN lein uberjar

#CMD ["java", "-jar", "target/app.jar"]
