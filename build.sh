#!/bin/bash

for i in {1..3}; do
  docker run -d --network duo --name duo-app-$i duo-app:v2
done
