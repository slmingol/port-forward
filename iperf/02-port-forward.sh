#!/bin/bash

date

oc port-forward -n slm $(oc get pods -n slm --no-headers | cut -d" " -f1 | grep iperf3-server) 12345:5201
#kubectl port-forward -n slm $(oc get pods -n slm --no-headers | cut -d" " -f1 | grep iperf3-server) 12345:5201
