#!/bin/bash

socat TCP-LISTEN:12345,bind=$(ip a l en0 | awk '/inet/ {print $2}' | cut -d/ -f1),fork TCP:localhost:12345
