FROM golang:1.13.6

# What version of the sensu-go binaries to build.
# Find version number under the releases tab on GitHub: https://github.com/sensu/sensu-go/releases
# Also supports 'latest' to build the latest version of the binaries.
ARG SENSU_BUILD_VERSION
ARG SENSU_BUILD_DATE

WORKDIR /go

# Build the sensu-go binaries.
# Check if version argument unset or 'latest'.
RUN git clone https://github.com/sensu/sensu-go.git sensu-go \
 && cd sensu-go \
 && test "${SENSU_BUILD_VERSION}" = "latest" -o -z "${SENSU_BUILD_VERSION}" -o -z "${SENSU_BUILD_DATE}" \
 &&(printf "Building latest Sensu Go version.\n" \
 && go build -o bin/sensu-agent ./cmd/sensu-agent \
 && go build -o bin/sensu-backend ./cmd/sensu-backend \
 && go build -o bin/sensuctl ./cmd/sensuctl) \
 ||(printf "Building Sensu Go version ${SENSU_BUILD_VERSION} from ${SENSU_BUILD_DATE}.\n" \
 && go build -ldflags "-X 'github.com/sensu/sensu-go/version.Version=${SENSU_BUILD_VERSION}' -X 'github.com/sensu/sensu-go/version.BuildDate=${SENSU_BUILD_DATE}' -X 'github.com/sensu/sensu-go/version.BuildSHA=$(git rev-parse HEAD)'" -o bin/sensu-agent ./cmd/sensu-agent \
 && go build -ldflags "-X 'github.com/sensu/sensu-go/version.Version=${SENSU_BUILD_VERSION}' -X 'github.com/sensu/sensu-go/version.BuildDate=${SENSU_BUILD_DATE}' -X 'github.com/sensu/sensu-go/version.BuildSHA=$(git rev-parse HEAD)'" -o bin/sensu-backend ./cmd/sensu-backend \
 && go build -ldflags "-X 'github.com/sensu/sensu-go/version.Version=${SENSU_BUILD_VERSION}' -X 'github.com/sensu/sensu-go/version.BuildDate=${SENSU_BUILD_DATE}' -X 'github.com/sensu/sensu-go/version.BuildSHA=$(git rev-parse HEAD)'" -o bin/sensuctl ./cmd/sensuctl)

WORKDIR /go/sensu-go
