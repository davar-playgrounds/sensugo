#!/bin/sh
./bin/sensuctl.sh

./bin/sensu-agent start \
  --backend-url ws://sensu-backend:8081 \
  --subscriptions schedules,rbac,roundrobin,proxy \
  --log-level warn \
  --keepalive-interval 5 \
  --keepalive-warning-timeout 10
