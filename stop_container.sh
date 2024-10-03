#!/bin/bash

# Log start
echo "Script started."

# Get the container ID of the running Docker container
container_id=$(docker ps -q --filter "name=your-container-name")

# Log the container ID found (or not found)
echo "Container ID found: $container_id"

# Check if the container ID is not empty
if [ -n "$container_id" ]; then
    echo "Stopping container with ID: $container_id"
    docker stop $container_id
else
    echo "No running container found to stop."
fi

echo "Script ended."
