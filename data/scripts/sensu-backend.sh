#!/bin/bash
# Enable bash built-ins (fg)
#set -o monitor
set -m

# Start the backend in the background
./bin/sensu-backend start --state-dir /var/lib/sensu/sensu-backend --log-level info & # log level debug
# Initialize the backend (has to be done while the backend is running)
./bin/sensu-backend init

# Restore the backend to foreground
fg
