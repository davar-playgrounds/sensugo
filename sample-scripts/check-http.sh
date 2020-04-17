#!/bin/sh

COMMAND="$(curl -o /dev/null --silent --head --write-out '%{http_code}\n' --max-time 30 --connect-timeout 15 --location ${1})"

if test "${COMMAND}" -eq "200"; then
  echo "Site available."
  exit 0
else
  echo "Site returned: ${COMMAND}"
  exit 1
fi
