#!/bin/bash

set -e

RUN_PATH="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $RUN_PATH

echo ----[ Build docker image ]----
DOCKER_IMAGE=fcloud-docker-java:$VERSION
docker build --no-cache -t $DOCKER_IMAGE .

rm -rf $DOCKER_BUILD
