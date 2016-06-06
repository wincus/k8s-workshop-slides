#!/bin/bash

source config.sh

# update the deployment object
kubectl delete pods -l name=update-demo

exit 0
