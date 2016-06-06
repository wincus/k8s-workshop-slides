#!/bin/bash

source config.sh

# check containers running on the vm
cd ${COREOS_KUBERNETES_PATH} && vagrant ssh -c "sudo docker ps | less"

exit 0
