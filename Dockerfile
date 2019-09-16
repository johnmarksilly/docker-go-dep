FROM golang:1.12.5-alpine3.9

RUN apk update \
    && apk add curl git \
    && curl -fsSL -o /usr/local/bin/dep https://github.com/golang/dep/releases/download/v0.5.4/dep-linux-amd64 \
    && chmod +x /usr/local/bin/dep \
    && go get -u golang.org/x/lint/golint
