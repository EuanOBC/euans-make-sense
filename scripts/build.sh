#!/bin/bash -e
if [[ $(uname -m) == 'arm64' ]]; then
  echo "Detected M1 mac; building for amd64 platform"
  PLATFORM_ARG="--platform linux/amd64"
fi
docker build $PLATFOR_ARG -t euans-make-sense:$(git rev-parse --short HEAD) -t euans-make-sense:latest .
