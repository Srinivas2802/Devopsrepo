#!/bin/bash

# Check if any container is running that matches your container name or ID filter
container_id=$(docker ps -q --filter "name=your-container-name")

# If no container is running, output a message and exit without error
if [ -z "$container_id" ]; then
    echo "No running container found to stop."
    exit 0
else
    echo "Stopping container with ID: $container_id"
    docker stop $container_id
fi
