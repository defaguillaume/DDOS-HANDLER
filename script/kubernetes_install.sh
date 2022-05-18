#!/bin/bash

#!/bin/bash

#  Package update 

sudo apt update -y 

#Swap space must be disabled in your system
sed -i 's/UUID/#UUID/' /etc/fstab

#enable IP forwarding

sed -i 's/#net.ipv4.ip_forward=1/net.ipv4.ip_forward=1/' /etc/sysctl.conf

#install the Kubernetes component

curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add
apt-add-repository "deb http://apt.kubernetes.io/ kubernetes-xenial main"

#update the repository and install all required components

apt-get update -y
apt-get install kubelet kubeadm kubectl -y

#initialize the Kubernetes

kubeadm init

#Start using cluster

 mkdir -p $HOME/.kube
  sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
  sudo chown $(id -u):$(id -g) $HOME/.kube/config

#--------podnetwork----------#