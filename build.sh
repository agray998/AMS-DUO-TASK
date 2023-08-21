#!/bin/bash

for i in {1..3}; do
  docker run -d --network duo --name duo-app-$i duo-app:v2
done

docker run -d -p 80:80 --name nginx --network duo --mount type=bind,source=$(pwd)/nginx.conf,target=/etc/nginx/nginx.conf nginx:alpine
