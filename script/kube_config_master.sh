#!/bin/bash

read -p "type ip Pod master :" n1
read -p "type ip Api Server master: " n2

 kubeadm init --pod-network-cidr=$n1 --apiserver-advertise-address=$n2

mkdir -p $HOME/.kube
 cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
 chown $(id -u):$(id -g) $HOME/.kube/config
 
 kubectl apply -f https://docs.projectcalico.org/v2.6/getting-started/kubernetes/installation/hosted/kubeadm/1.6/calico.yaml

 kubectl get namespaces

 kubectl get nodes4
