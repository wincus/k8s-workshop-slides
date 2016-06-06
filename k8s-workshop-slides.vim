#!/bin/bash

source config.sh

# get deployments
kubectl get -w deployments

exit 0
