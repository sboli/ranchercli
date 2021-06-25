#!/bin/bash

export VERSION=$(cat VERSION)

envsubst < Dockerfile.template  > Dockerfile

docker build -t boli/rancher-cli:latest .
docker tag boli/rancher-cli:latest boli/rancher-cli:$VERSION
docker push boli/rancher-cli:latest
docker push boli/rancher-cli:$VERSION
