#!/bin/bash

source config.sh

# update the deployment object
kubectl apply -f - << EOF
apiVersion: extensions/v1beta1
kind: Deployment
metadata:
  name: demo-deployment
spec:
  replicas: 16
  strategy:
    type: RollingUpdate
    rollingUpdate:
      maxUnavailable: '100%'
      maxSurge: '100%'
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
