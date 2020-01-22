FROM golang:latest

ARG SENSU_VERSION

RUN apt-get update \
 && apt-get install -y vim

RUN git clone https://github.com/sensu/sensu-go.git \
 && cd sensu-go \
 && go build -ldflags '-X "github.com/sensu/sensu-go/version.Version=${SENSU_VERSION}"' -o bin/sensu-agent ./cmd/sensu-agent \
 && go build -ldflags '-X "github.com/sensu/sensu-go/version.Version=${SENSU_VERSION}"' -o bin/sensu-backend ./cmd/sensu-backend \
 && go build -ldflags '-X "github.com/sensu/sensu-go/version.Version=${SENSU_VERSION}"' -o bin/sensuctl ./cmd/sensuctl

WORKDIR /go/sensu-go
