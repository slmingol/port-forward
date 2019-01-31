#!/bin/bash

ip=$(ip a l en0 | awk '/inet/ {print $2}' | cut -d/ -f1)
docker run --network=host -it --rm networkstatic/iperf3 -c ${ip} -p 12345
