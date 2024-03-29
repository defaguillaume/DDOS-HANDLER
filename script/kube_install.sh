#!/bin/bash

curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg |  apt-key add -

echo 'deb http://apt.kubernetes.io/ kubernetes-xenial main' | tee /etc/apt/sources.list.d/kubernetes.list

 apt-get update
 
 apt install kubelet kubeadm kubectl -y

  apt-mark hold kubelet kubeadm kubectl

