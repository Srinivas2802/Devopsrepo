#!/bin/bash
set -e  # Exit immediately if a command exits with a non-zero status

# Check if the script is being run as root
if [ "$EUID" -ne 0 ]; then 
  echo "Please run as root"
  exit 1
else
  echo "Running as root user"
fi

# Pull the Docker image from Docker Hub
echo "Pulling Docker image srinivasv2802/codedeploy:latest"
docker pull srinivasv2802/codedeploy:latest

# Check if the Docker pull was successful
if [ $? -ne 0 ]; then
  echo "Failed to pull the Docker image."
  exit 1
fi

# Run the Docker image as a container
echo "Running Docker container from image srinivasv2802/codedeploy:latest"
docker run -d -p 5000:5000 srinivasv2802/codedeploy:latest

# Check if the Docker container started successfully
if [ $? -eq 0 ]; then
  echo "Docker container started successfully."
else
  echo "Failed to start Docker container."
  exit 1
fi

