#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
 dockerpath=housing-prices

# Step 2:  
# Authenticate & tag
docker login --username partha14
docker tag housing-prices partha14/housing-prices:v1 

echo "Docker ID and Image: $dockerpath"

# Step 3:
# Push image to a docker repository
docker push partha14/housing-prices:v1
