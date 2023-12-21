#!/bin/bash

echo "Building script file"

#Name and version of the image

IMAGE_NAME=react
IMAGE_VERSION=v1

# Tagging the image with the Docker Hub repository name and version

docker tag $IMAGE_NAME:$IMAGE_VERSION rubanthomas92/prod:$IMAGE_VERSION
docker tag $IMAGE_NAME:$IMAGE_VERSION rubanthomas92/dev:$IMAGE_VERSION

# Push the image to Docker Hub
docker push rubanthomas92/prod:$IMAGE_VERSION
docker push rubanthomas92/dev:$IMAGE_VERSION

echo "Deploy success"
