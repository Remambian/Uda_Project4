#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=remambian/app

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
sudo docker tag app:latest remambian/app
sudo docker login -u remambian@gmail.com -p Udacity@2023

# Step 3:
# Push image to a docker repository
 sudo docker push $dockerpath
