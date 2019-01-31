#!/bin/bash

#oc port-forward -n slm $(oc get pods -n slm --no-headers | cut -d" " -f1) 12345:6379
kubectl port-forward -n slm $(oc get pods -n slm --no-headers | cut -d" " -f1) 12345:6379
