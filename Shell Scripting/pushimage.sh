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

# Tag the local Docker image with the Artifactory repository URL
docker tag $DOCKER_IMAGE $ARTIFACTORY_URL/$REPO_NAME/$DOCKER_IMAGE

# Push the tagged image to Artifactory
docker push $ARTIFACTORY_URL/$REPO_NAME/$DOCKER_IMAGE

# Logout from Artifactory
docker logout $ARTIFACTORY_URL

echo "Docker image $DOCKER_IMAGE pushed to Artifactory." 