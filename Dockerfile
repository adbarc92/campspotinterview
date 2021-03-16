FROM ubuntu:18.04

#Install neccesary dependencies
RUN apt-get update && \
    apt-get install -y openjdk-8-jdk &&\
    apt-get clean

#Set application working directory
WORKDIR /var/campspot

#Move the build artifacts into the image folder
ADD ./devops-challenge-web-service/target/devops-challenge-web-service-1.0-SNAPSHOT.jar  /var/campspot/devops-challenge-web-service-1.0-SNAPSHOT.jar
ADD ./devops-challenge-web-service/serverconfig.yml /var/campspot/config.yml

#Expose Ports for application and admin access
EXPOSE 8888 8889

#Start the application
ENTRYPOINT ["java", "-jar", "devops-challenge-web-service-1.0-SNAPSHOT.jar", "server", "config.yml"]