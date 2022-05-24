#!/bin/bash

sudo kubeadm init --pod-network-cidr=$1 --apiserver-advertise-address=$2

mkdir -p $HOME/.kube
 cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
 chown $(id -u):$(id -g) $HOME/.kube/config
 
sudo kubectl apply -f https://docs.projectcalico.org/v2.6/getting-started/kubernetes/installation/hosted/kubeadm/1.6/calico.yaml

sudo kubectl get namespaces

sudo kubectl get nodes

