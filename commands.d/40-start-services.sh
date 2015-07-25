#!/bin/bash

fleetctl start \
  vulcand.service \
  vulcand-etcd.service \
  octoblu-tentacle-server-etcd-netfw-frontend.service \
  octoblu-tentacle-server-etcd-netfw-backend-blue.service \
  octoblu-tentacle-server-etcd-netfw-backend-green.service


fleetctl start octoblu-api-octoblu-blue@1.service
fleetctl start octoblu-api-octoblu-blue-register@1.service
fleetctl start octoblu-api-octoblu-blue-route@1.service
fleetctl start octoblu-api-octoblu-blue-healthcheck.service

fleetctl start octoblu-app-octoblu-blue@1.service
fleetctl start octoblu-app-octoblu-blue-register@1.service
fleetctl start octoblu-app-octoblu-blue-healthcheck.service

fleetctl start octoblu-tentacle-server-blue@1.service
fleetctl start octoblu-tentacle-server-blue-register@1.service
fleetctl start octoblu-tentacle-server-blue-healthcheck.service

fleetctl start octoblu-triggers-service-blue@1.service
fleetctl start octoblu-triggers-service-blue-register@1.service
fleetctl start octoblu-triggers-service-blue-healthcheck.service
