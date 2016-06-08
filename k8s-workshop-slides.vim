#!/bin/bash

source config.sh

# bring up the vm .... 

cd ${COREOS_KUBERNETES_PATH} && vagrant up

exit 0
