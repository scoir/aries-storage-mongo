#!/usr/bin/env bash

set -e

echo "Running $0"

echo "" >coverage.txt

# docker rm returns 1 if the image isn't found. This is OK and expected, so we suppress it
# Any return status other than 0 or 1 is unusual and so we exit
remove_docker_container() {
  docker kill MongoStoreTest >/dev/null 2>&1 || true
  docker rm MongoStoreTest >/dev/null 2>&1 || true
}

remove_docker_container

docker run -p 27017:27017 --name MongoStoreTest -d mongo:4.2.8 >/dev/null || true

go test ./pkg/... -count=1 -race -coverprofile=profile.out -covermode=atomic -timeout=10m

remove_docker_container
