#!/bin/bash

ETCD_PAIRS=$(cat $INSTALL_DIR/config.d/* 2> /dev/null)

if [ -n "$ETCD_PAIRS" ]; then
  while read -r ETCD_PAIR; do
    PAIR=($ETCD_PAIR)
    KEY=${PAIR[0]}
    VALUE=${PAIR[1]}

    etcdctl set $KEY $VALUE > /dev/null
  done <<< "$ETCD_PAIRS"
fi
