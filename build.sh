#!/bin/bash

echo "Building script file"

#building docker images

docker build -t react:v1 .
docker images


#building docker containers

docker-compose up -d
docker ps

#docker container logs
docker logs reactjs

echo "Build success"
