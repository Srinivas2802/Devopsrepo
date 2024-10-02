#!/bin/bash
set -e

# Pull the Docker image from Docker Hub
docker pull srinivasv2802/codedeploy:latest

# Run the Docker image as a container
docker run -d -p 5000:5000 srinivasv2802/codedeploy:latest
