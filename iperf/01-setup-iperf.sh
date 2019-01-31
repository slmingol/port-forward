#!/bin/bash

wget https://gist.githubusercontent.com/h-otter/5a3f048f99ff22c928ffad8d07ce8c0c/raw/90aca47ff2c41f9ca6868fe788c335b7700f00d1/gistfile1.txt -O iperf.yaml
kubectl create -f iperf.yaml -n slm
