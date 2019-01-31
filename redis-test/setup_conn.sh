#!/bin/bash

./01-setup-redis.sh &
./02-port-forward.sh &
./03-socat-forward.sh &
