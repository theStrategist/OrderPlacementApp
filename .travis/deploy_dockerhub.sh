#!/bin/sh

MY_DOCKER_REPO="saptadip/flask_order_placement_app"

docker login -e $DOCKER_EMAIL -u $DOCKER_USER -p $DOCKER_PASS
if [ "$TRAVIS_BRANCH" = "master" ]; then
    TAG="latest"
else
    TAG="$TRAVIS_BRANCH"
fi
docker build -f Dockerfile -t $MY_DOCKER_REPO:$TAG .
docker push $MY_DOCKER_REPO