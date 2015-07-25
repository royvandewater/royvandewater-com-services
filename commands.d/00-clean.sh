#!/bin/bash

fleetctl list-unit-files -no-legend -fields unit | xargs fleetctl destroy

echo "Murdering docker"
for CONTAINER in "$(docker ps --quiet)"; do
  docker kill $CONTAINER > /dev/null
done

etcdctl rm --recursive /vulcand &> /dev/null
