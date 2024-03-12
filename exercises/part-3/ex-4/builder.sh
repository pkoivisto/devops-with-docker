#!/bin/bash
set -euo pipefail

LEN=$#

if ! [ $LEN -eq 2 ]
then
  echo "Error: expected two arguments"
  echo "Usage: ./builder.sh <github-repository> <docker-hub-repository>"
  exit 1
fi

# Github repo to clone
GH_REPO=$1
# Docker Hub repo to push built image to
DH_REPO=$2

TEMP_DIR=$(mktemp -d)/gh_repo
git clone https://github.com/${GH_REPO} ${TEMP_DIR}
cd ${TEMP_DIR}

# Login to Docker hub
docker login --username ${DOCKER_USER} --password ${DOCKER_PWD}
# Build Docker image and push to repository
docker build -t ${DH_REPO}:latest .
docker push ${DH_REPO}:latest

# Clean up
cd -
rm -rf ${TEMP_DIR}
exit 0
