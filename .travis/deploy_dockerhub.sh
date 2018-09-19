#!/bin/sh
docker login -u $DOCKER_USER -p $DOCERK_PASS
if["$TRAVIS_BRANCH" = "master"]; then
	TAG="latest"
else
	TAG="$TRAVIS_BRANCH"
fi
docker build -f dockerfile -t $TRAVIS_REPO_SLUG:$TAG .
docker push $TRANVIS_REPO_SLUG
