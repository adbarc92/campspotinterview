#!/bin/bash

echo "Stop and remove the campspot App"
sudo docker container stop campspotApp

echo "Run the the campspot application"
sudo docker run -d --rm -p 8888:8888 -p 8889:8889 --name campspotApp campspotappcontainer
sudo docker network connect campspotNetwork campspotApp 

echo "Listening on: http://localhost:8888"