FROM alpine

RUN apk update && apk upgrade && apk add python

WORKDIR /tmp/http
ADD . /tmp/http

CMD ["python", "-m", "SimpleHTTPServer", "9090"]
