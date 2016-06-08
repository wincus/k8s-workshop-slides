#!/bin/bash

source config.sh

# check the kubernetes agent status
cd ${COREOS_KUBERNETES_PATH} && vagrant ssh -c "sudo  systemctl status kubelet.service"

exit 0
