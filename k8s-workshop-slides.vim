#!/bin/bash

source config.sh

# check the server version using the API
curl  http://127.0.0.1:8001/version

exit 0
