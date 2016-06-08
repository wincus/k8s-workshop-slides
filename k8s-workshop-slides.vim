#!/bin/bash

source config.sh

# create a deployment object
kubectl create -f - << EOF
apiVersion: extensions/v1beta1
kind: Deployment
metadata:
  name: demo-deployment
spec:
  replicas: 3
  strategy:
    type: RollingUpdate
    rollingUpdate:
      maxUnavailable: '50%'
      maxSurge: '50%'
  template:
    metadata:
      labels:
        name: update-demo
        app: web
    spec:
      containers:
      - image: gcr.io/google_containers/update-demo:nautilus
        imagePullPolicy: IfNotPresent
        name: update-demo
        ports:
        - containerPort: 80
          protocol: TCP
EOF

exit 0
