#!/bin/bash

# removes all docker images

container_ids=$(docker image ls --format "{{.ID}}")

# Loop through each container ID
for container_id in $container_ids
do
    echo "Processing container: $container_id"
    docker rmi $container_id    
done