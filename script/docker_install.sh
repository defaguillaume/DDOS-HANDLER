#!/bin/bash

echo Docker Install

#Disable swap memory

#swapoff -a

#  Package update 

apt update -y 

# Install Prerequisite packages 

  apt-get install \
    ca-certificates \
    curl \
    gnupg \
    lsb-release -y

# Add GPG key for the official Docker repository

curl -fsSL https://download.docker.com/linux/debian/gpg | gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg -

# Add the docker repository to APT sources

 echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/debian \
  $(lsb_release -cs) stable" |  tee /etc/apt/sources.list.d/docker.list > /dev/null

# Update the package again

 apt update -y

# Install from the docker repo

  apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin -y

# Install docker 

 apt install docker-ce

# Troubleshooting docker group 

 sudo usermod -aG docker $USER


# Check if Docker is correctly installed

 systemctl status docker

#Setup the Docker daemon to use systemd as the cgroup driver
#
 #bash -c 'cat > /etc/docker/daemon.json <<EOF
# {
 # "exec-opts": ["native.cgroupdriver=systemd"],
#  "log-driver": "json-file",
 ## "log-opts": {
#    "max-size": "100m"
#  },
#  "storage-driver": "overlay2"
#}
#E#OF'


#Create a systemd directory for Docker

#sudo mkdir -p /etc/systemd/system/docker.service.d

#Restart Docker

#sudo systemctl daemon-reload
#sudo systemctl restart docker