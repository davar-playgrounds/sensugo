#!/bin/bash
# Connect to the sensu-backend
# This does not configure anything
# Here, the -n flag triggers non-interactive mode. Run `sensuctl config view` to see your user profile.
# We recommend that you change the default admin password immediately: sensuctl user change-password --interactive.
# https://docs.sensu.io/sensu-go/latest/installation/install-sensu/#install-sensuctl
./bin/sensuctl configure -n \
  --username "${SENSU_BACKEND_CLUSTER_ADMIN_USERNAME}" \
  --password "${SENSU_BACKEND_CLUSTER_ADMIN_PASSWORD}" \
  --namespace default \
  --url 'http://sensu-backend:8080'

# Keep container running after everything else finished
tail -f /dev/null
