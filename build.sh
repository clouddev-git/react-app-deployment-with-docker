#!/bin/bash
docker login -u arul143 -p Vijayalakshmi@2718
docker stop projectcontainer
docker rm projectcontainer
docker build -t reactapplicationimg .
docker run -itd --name reactapplicationcontainer -p 80:80 reactapplicationimg
docker tag reactapplicationimg arul143/reactapplicationimage:ci-cd
docker push arul143/reactapplicationimage:ci-cd
