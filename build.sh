#!/bin/bash
docker login -u arul143 -p Vijayalakshmi@2718
docker stop reactcon
docker rm reactcon
docker build -t reactapp .
docker run -itd --name react -p 80:80 reactapp
docker tag reactapp arul143/react-app:ci-cd
docker push arul143/react-app:ci-cd
