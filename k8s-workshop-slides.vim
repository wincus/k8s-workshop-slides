#!/bin/bash

source config.sh

# create a POD that crash
# kubectl run example --image=busybox --command -- sleep 10

# get pods 
# kubectl get -w pods -l run=example

# delete pods 
# kubectl delete pods -l run=example

# ups 
# kubectl get -w deployments

# delete deployments
# kubectl delete deployment example

# verify no pods are running
# kubectl get pods -o wide

exit 0
