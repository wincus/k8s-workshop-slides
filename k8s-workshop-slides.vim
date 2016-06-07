#!/bin/bash

source config.sh

# proxy to the kubernetes api
# this allows applications to talk to the api easily
kubectl proxy --www=${KUBERNETES_DOCS}/docs/user-guide/update-demo/local/ &

# open the browser http://127.0.0.1:8001/static/

exit 0
