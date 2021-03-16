#!/bin/bash

echo "Create the webapp network"
sudo docker network create campspotNetwork --subnet=192.168.0.0/16

echo "Run the redis container"
sudo docker run --name redis-server -d redis 
sudo docker network connect campspotNetwork redis-server --ip 192.168.0.2

echo "Run the the campspot applicaiton"
sudo docker run -d --rm -p 8888:8888 -p 8889:8889 --name campspotApp campspotappcontainer
sudo docker network connect campspotNetwork campspotApp 

echo "Listening on: http://localhost:8888"