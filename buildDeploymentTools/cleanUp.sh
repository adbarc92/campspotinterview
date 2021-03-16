#!/bin/bash

echo "Turn off and remove the App Container"
sudo docker container stop campspotApp

echo "Turn off and remove the redis app container"
sudo docker container stop redis-server
sudo docker container rm redis-server

echo "Remove Network Connections"
sudo docker network rm campspotNetwork