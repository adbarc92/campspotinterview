#!/bin/sh

#Run an update
sudo apt-get update

#Install Java 8 JDK
sudo apt-get install openjdk-8-jdk

#Install Maven
sudo apt-get install maven

#Install Redis
sudo apt-get install redis-server

# Configure Redis
#Run redis as service
sed -i "s/^supervised no/supervised systemd/" /etc/redis/redis.conf
# Start Redis
systemctl start redis
# Enable Redis to Start at Boot
systemctl enable redis

#Install Docker Dependencies
sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg \
    lsb-release

#Add Docker’s official GPG key:
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

#Install Docker Engine
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io