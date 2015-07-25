#!/bin/bash

fleetctl list-unit-files -no-legend -fields unit | xargs fleetctl destroy

CONTAINERS=$(docker ps --quiet)

if [ -n "$CONTAINERS" ]; then
  echo "Murdering docker"
  for CONTAINER in "${CONTAINERS}"; do
    docker kill $CONTAINER > /dev/null
  done
fi

etcdctl rm --recursive /vulcand &> /dev/null
