#!/bin/bash

ip=$(ip a l en0 | awk '/inet/ {print $2}' | cut -d/ -f1)
docker run --network=host -it --rm pataquets/redis-benchmark -h ${ip} -p 12345 ping
