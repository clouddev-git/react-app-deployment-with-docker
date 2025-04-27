#!/bin/bash
docker login -u arul143 -p Vijayalakshmi@2718
docker build -t proimg .
docker run -itd --name procon -p 80:80 proimg
docker tag proimg arul143/proapplication:ci-cd
docker push arul143/proapplication:ci-cd
