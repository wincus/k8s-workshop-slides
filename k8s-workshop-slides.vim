#!/bin/bash

source config.sh

# update the deployment object
kubectl get pods -l name=update-demo

exit 0
