#!/bin/bash

#  Package update 

 apt update -y 

# Install Prerequisite packages 

  apt-get install \
    ca-certificates \
    curl \
    gnupg \
    lsb-release

# Add GPG key for the official Docker repository

curl -fsSL https://download.docker.com/linux/debian/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg -

# Add the docker repository to APT sources

 echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/debian \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

# Update the package again

 apt update -y

# Install from the docker repo

 sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin

# Install docker 

 apt install docker-ce

# Troubleshooting docker group 

 usermod -aG docker ${USER}

# Check if Docker is correctly installed

 systemctl status docker