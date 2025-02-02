#!/bin/bash
docker login -u $DOCKER_USERNAME -p $DOCKER_PASS
docker stop mycon
docker rm mycon
docker build -t finalimg .
docker run -itd --name finalcon -p 80:80 finalimg
docker tag finalimg arul143/finalimg
docker push arul143/finalimg
