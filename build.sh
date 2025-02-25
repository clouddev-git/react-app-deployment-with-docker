#!/bin/bash
docker login -u $DOCKER_USERNAME -p $DOCKER_PASS
docker stop keen_chaum
docker rm keen_chaum
docker build -t reactapp .
docker run -d -it --name react -p 80:80 reactapp
docker tag reactapp arul143/react-app:ci-cd
docker push arul143/react-app:ci-cd
