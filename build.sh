#!/bin/bash
docker login -u $DOCKER_USERNAME -p $DOCKER_PASS
docker stop react
docker rm -f react
docker build -t proimg-ci/cd .
docker run -itd --name procon -p 80:80 proimg-ci/cd
docker tag proimg-ci/cd arul143/application:ci-cd
docker push arul143/application:ci-cd
