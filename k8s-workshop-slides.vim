#!/bin/bash

source config.sh

# describe gives a more detailed 
# information about the resource
# also check the use of labels

kubectl describe service -l provider=kubernetes

exit 0
