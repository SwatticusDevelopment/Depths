#!/usr/bin/env bash

export LC_ALL=C

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR/.. || exit

DOCKER_IMAGE=${DOCKER_IMAGE:-The-Depths-Endeavor/Depthsd-develop}
DOCKER_TAG=${DOCKER_TAG:-latest}

BUILD_DIR=${BUILD_DIR:-.}

rm docker/bin/*
mkdir docker/bin
cp $BUILD_DIR/src/Depthsd docker/bin/
cp $BUILD_DIR/src/Depths-cli docker/bin/
cp $BUILD_DIR/src/Depths-tx docker/bin/
strip docker/bin/Depthsd
strip docker/bin/Depths-cli
strip docker/bin/Depths-tx

docker build --pull -t $DOCKER_IMAGE:$DOCKER_TAG -f docker/Dockerfile docker
