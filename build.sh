#!/bin/bash
docker login -u arul143 -p Vijayalakshmi@2718
docker stop reactcon
docker rm reactcon
docker build -t finalimg .
docker run -itd --name react -p 80:80 finalimg
docker tag finalimg arul143/finalapp:ci-cd
docker push arul143/finalapp:ci-cd
