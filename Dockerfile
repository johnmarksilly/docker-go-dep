FROM golang:1.9.2-alpine3.7

RUN apk update \
    && apk add curl git \
    && curl -fsSL -o /usr/local/bin/dep https://github.com/golang/dep/releases/download/v0.3.2/dep-linux-amd64 && chmod +x /usr/local/bin/dep
