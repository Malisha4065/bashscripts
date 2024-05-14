#!/bin/bash

# removes all docker containers - all that shown when running 'docker ps -a'
# run stopdockercontainers.sh first to stop all running containers first

container_ids=$(docker ps -a --format "{{.ID}}")

# Loop through each container ID
for container_id in $container_ids
do
    echo "Processing container: $container_id"
    docker rm $container_id    
done