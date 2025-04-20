#!/bin/bash
docker login -u arul143 -p Vijayalakshmi@2718
docker build -t reactimg .
docker run -itd --name reactcon -p 80:80 reactimg
docker tag reactimg arul143/reactapplication:ci-cd
docker push arul143/reactapplication:ci-cd
