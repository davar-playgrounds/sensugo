#!/bin/sh
# wait.sh http://sensu-backend:8080/health callback
set -o errexit
set -o nounset

host="${1}"
shift
callback="${@}"

until $(curl --silent --show-error --fail --connect-timeout 15 --max-time 30 --location -X GET ${host} -o /dev/null); do
  >&2 printf "Service unavailable - sleeping...\n"
  sleep 1
done

>&2 printf "Service is up - starting...\n"
exec ${callback}
