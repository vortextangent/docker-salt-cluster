#!/bin/bash
docker kill $(docker ps -a -q)
# Delete all containers
docker rm $(docker ps -a -q -f STATUS=created)
# Delete all images
docker rmi -f $(docker images -aq --filter "dangling=true")