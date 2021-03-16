# Campspot DevOps Challenge Application Results
This repository contains the sources for a simple client-server web application. The server portion is a Kotlin web application using the Dropwizard framework (dropwizard.io). The client is a very simple HTML and JavaScript application. 

## How to Build
All the tools needed to setup the environment, build the application and deploy the docker containers are in the buildDeploymentTools Folder.
Below are descriptions of all the scripts.

### Environment Setup
This script will install the the necessary dependencies for building the dropwizard app as well as the tools needed to build and deploy the docker containers for the application and the redis db.

### Build
This script will build the application and create a docker image that contains the application

### Run 
This script will create the network for the containers, start the redis container, and start the application container. It also connects the application and redis container to the network. 

### Redeploy App
This script will redeploy the application. This is intended for use after making changes to the application and running the build script.

### Clean Up
This script stop the redis db and application, and removed the container network.

## Extra Credit
I wasn't able to get this working but I was trying the use the Filters and Interceptors to filter the api/healthcheck request and use a filter to change the request path and port. https://eclipse-ee4j.github.io/jersey.github.io/documentation/latest/filters-and-interceptors.html
