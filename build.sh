#!/bin/bash
docker login -u $DOCKER_USERNAME -p $DOCKER_PASS
docker stop reactcon
docker rm reactcon
docker build -t reactapp .
docker run -itd --name react -p 80:80 reactapp
docker tag reactapp arul143/react-app:ci-cd
docker push arul143/react-app:ci-cd
