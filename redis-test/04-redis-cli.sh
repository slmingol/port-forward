#!/bin/bash

docker run --network=host -it --rm goodsmileduck/redis-cli /usr/local/bin/redis-cli -h $(ip a l en0 | awk '/inet/ {print $2}' | cut -d/ -f1) -p 12345 ping
