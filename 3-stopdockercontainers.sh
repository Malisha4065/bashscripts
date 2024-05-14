#!/bin/bash

# stops all docker containers

container_ids=$(docker ps -a --format "{{.ID}}")

# Loop through each container ID
for container_id in $container_ids
do
    echo "Processing container: $container_id"
    docker stop $container_id    
done