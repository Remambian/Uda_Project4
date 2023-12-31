#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=remambian/app

# Step 2
# Run the Docker Hub container with kubernetes
kubectl create deployment kubernetes-udacityproj --image=remambian/app


# Step 3:
# List kubernetes pods
kubectl get deploy,rs,svc,pods

# Step 4:
# Forward the container port to a host
kubectl port-forward pod/kubernetes-udacityproj-6ff5cf665-hnf9w --address 0.0.0.0 8000:80
