#!/bin/bash

source config.sh

# kubectl is the kube admin tool you will use
# to manage the k8s cluster
# talks to the API only

kubectl get nodes    # retrieves worker nodes
kubectl get pods     # retrieves all running pods
kubectl get services # retrives services
kubectl get namespaces # .... and namespaces

exit 0
