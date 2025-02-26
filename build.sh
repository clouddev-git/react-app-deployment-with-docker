#!/bin/bash
docker login -u arul143 -p Vijayalakshmi@2718
docker stop reactcon
docker rm reactcon
docker build -t reactapplication .
docker run -itd --name react -p 80:80 reactapplication
docker tag reactapplication arul143/reactapplication:ci-cd
docker push arul143/reactapplication:ci-cd
