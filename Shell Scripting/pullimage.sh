#!/bin/bash

# Artifactory repository details
ARTIFACTORY_URL="https://your-artifactory-url"
REPO_NAME="docker-repo"
IMAGE_NAME="my-docker-image"
TAG="latest"

# Docker image details
DOCKER_IMAGE="$IMAGE_NAME:$TAG"

# Docker login to Artifactory
docker login $ARTIFACTORY_URL

# Pull the Docker image from Artifactory
docker pull $ARTIFACTORY_URL/$REPO_NAME/$DOCKER_IMAGE

# Logout from Artifactory
docker logout $ARTIFACTORY_URL

echo "Docker image $DOCKER_IMAGE pulled from Artifactory."
