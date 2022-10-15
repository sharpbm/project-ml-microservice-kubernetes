#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath="pankaj765/mlmicroservice"

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run mlmicroservice --image=$dockerpath --port=80 --labels app=mlmicroservice


# Step 3:
# List kubernetes pods
kubectl get po

# Step 4:
# Forward the container port to a host
kubectl port-forward mlmicroservice 8000:80

