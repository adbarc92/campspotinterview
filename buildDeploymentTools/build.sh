#!/bin/bash

cd ../
#Build the dropwizard app
mvn package
if [[ "$?" -ne 0 ]] ; then
  echo 'could not build app'; 
  exit $rc
fi

#Create Campspot App Container
sudo docker build -t campspotappcontainer .