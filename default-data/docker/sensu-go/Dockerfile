FROM golang:1.13.6

# What version of the sensu-go binaries to build.
# Find version number under the releases tab on GitHub: https://github.com/sensu/sensu-go/releases
# Also supports 'latest' to build the latest version of the binaries.
ARG SENSU_VERSION=5.14.0

# Install vim...
#RUN apt-get update \
# && apt-get install -y vim

# Make sure you're in /go when running commands.
WORKDIR /go

# Build the sensu-go binaries.
# Check if version argument equal to 'latest'.
RUN git clone https://github.com/sensu/sensu-go.git sensu-go \
 && cd sensu-go \
 && test "${SENSU_VERSION}" = "latest" \
 && : \
 ||(go build -ldflags '-X "github.com/sensu/sensu-go/version.Version=${SENSU_VERSION}"' -o bin/sensu-agent ./cmd/sensu-agent \
 && go build -ldflags '-X "github.com/sensu/sensu-go/version.Version=${SENSU_VERSION}"' -o bin/sensu-backend ./cmd/sensu-backend \
 && go build -ldflags '-X "github.com/sensu/sensu-go/version.Version=${SENSU_VERSION}"' -o bin/sensuctl ./cmd/sensuctl) \
 &&(go build -o bin/sensu-agent ./cmd/sensu-agent \
 && go build -o bin/sensu-backend ./cmd/sensu-backend \
 && go build -o bin/sensuctl ./cmd/sensuctl)

# Plain build step without version check.
#RUN git clone https://github.com/sensu/sensu-go.git sensu-go \
# && cd sensu-go \
# && go build -ldflags '-X "github.com/sensu/sensu-go/version.Version=${SENSU_VERSION}"' -o bin/sensu-agent ./cmd/sensu-agent \
# && go build -ldflags '-X "github.com/sensu/sensu-go/version.Version=${SENSU_VERSION}"' -o bin/sensu-backend ./cmd/sensu-backend \
# && go build -ldflags '-X "github.com/sensu/sensu-go/version.Version=${SENSU_VERSION}"' -o bin/sensuctl ./cmd/sensuctl

#RUN git clone https://github.com/sensu/sensu-go.git sensu-go \
# && cd sensu-go \
# && go build -o bin/sensu-agent ./cmd/sensu-agent \
# && go build -o bin/sensu-backend ./cmd/sensu-backend \
# && go build -o bin/sensuctl ./cmd/sensuctl

# Change workdir to /go/sensu-go
WORKDIR /go/sensu-go
