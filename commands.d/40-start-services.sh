#!/bin/bash

fleetctl start vulcand.service

fleetctl start c3po@1.service
fleetctl start c3po-register@1.service
