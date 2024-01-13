#!/bin/bash
set -euo pipefail

if ! command -v gh &> /dev/null
then
    echo "Error: gh could not be found"
    exit 1
fi

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

GH_REPO_REGEX="(.*)/(.*)"
if ! [[ $GH_REPO =~ $GH_REPO_REGEX ]]
then
  echo "Error: Expected Github repository to be given in form 'account/repository'"
  exit 1
else 
  GH_REPO_REPOSITORY_NAME=${BASH_REMATCH[2]}
fi

# Switch to temporary directory
TEMP_DIR=$(mktemp -d)
pushd ${TEMP_DIR} &>/dev/null
gh repo clone ${GH_REPO}
pushd ${GH_REPO_REPOSITORY_NAME} &>/dev/null

# Build Docker image and push to repository
docker build -t ${DH_REPO}:latest .
docker push ${DH_REPO}:latest

# Clean up
popd &>/dev/null
popd &>/dev/null
rm -rf ${TEMP_DIR}
exit 0
