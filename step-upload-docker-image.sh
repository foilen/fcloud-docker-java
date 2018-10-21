#!/bin/bash

set -e

RUN_PATH="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $RUN_PATH

echo ----[ Upload docker image ]----
DOCKER_IMAGE=fcloud-docker-java:$VERSION
docker login
docker tag $DOCKER_IMAGE foilen/$DOCKER_IMAGE
docker tag $DOCKER_IMAGE foilen/fcloud-docker-java:latest
docker push foilen/$DOCKER_IMAGE
docker push foilen/fcloud-docker-java:latest
