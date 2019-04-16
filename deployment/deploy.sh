#!/bin/bash

echo "Deploying to docker hub..."
docker build . -t jeansaigne/website:latest && \
echo "$REGISTRY_PASSWORD" | docker login -u "$REGISTRY_USERNAME" --password-stdin && \
docker push jeansaigne/website:latest
