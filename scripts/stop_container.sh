#!/bin/bash
set -e  # Exit immediately if a command exits with a non-zero status

CONTAINER_ID=$(docker ps -q --filter ancestor=srinivasv2802/codedeploy:latest)

# Check if any containers are running for the image
if [ -z "$CONTAINER_ID" ]; then
  echo "No running containers found for the image srinivasv2802/codedeploy:latest."
else
  echo "Stopping container with ID: $CONTAINER_ID"
  docker stop "$CONTAINER_ID"
  
