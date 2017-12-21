#!/bin/bash
set -e

docker login -u="$QUAY_USERNAME" -p="$QUAY_PASSWORD" quay.io
docker tag ${APP_IMAGE} quay.io/${APP_IMAGE}:${TRAVIS_TAG}
docker tag ${APP_IMAGE} quay.io/${APP_IMAGE}:latest
docker images
docker push quay.io/${APP_IMAGE}:${TRAVIS_TAG}
docker push quay.io/${APP_IMAGE}:latest
