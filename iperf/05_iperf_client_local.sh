#!/bin/bash

while [ 1 ]; do echo "START TIME: $(date)"; iperf3 -c localhost -p 12345 -b 10M; sleep 1; echo "END TIME: $(date)";done

