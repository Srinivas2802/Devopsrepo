#!/bin/bash
set -e  # Exit immediately if a command exits with a non-zero status

# Check if the script is being run as root
if [ "$EUID" -ne 0 ]; then 
  echo "Please run as root"
  exit 1
else
  echo "Running as root user"
fi

# Get the container ID of the running container (assuming the container is using the image srinivasv2802/codedeploy)
CONTAINER_ID=$(docker ps -q --filter ancestor=srinivasv2802/codedeploy:latest)

# Check if any containers are running for the image
if [ -z "$CONTAINER_ID" ]; then
  echo "No running containers found for the image srinivasv2802/codedeploy:latest."
else
  echo "Stopping container with ID: $CONTAINER_ID"
  docker stop "$CONTAINER_ID"
  
  # Verify if the container stopped successfully
  if [ $? -eq 0 ]; then
    echo "Container stopped successfully."
  else
    echo "Failed to stop the container."
    exit 1
  fi
fi
