#!/bin/bash
set -e  # Exit immediately if a command exits with a non-zero status
# Pull the Docker image from Docker Hub
docker pull srinivasv2802/codedeploy:latest
docker run -d -p 5000:5000 srinivasv2802/codedeploy:latest



