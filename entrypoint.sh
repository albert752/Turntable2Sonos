#!/bin/bash - 
set -o nounset

# Set up darkice config file with the enviroment variables
sed -i -e 's/{{ DEV }}/'"$DEV"'/g' /darkice.cfg
sed -i -e 's/{{ CARD }}/'"$CARD"'/g' /darkice.cfg

# Start the icecast2 service
service icecast2 start

#Start Dakice
darkice -c /darkice.cfg


