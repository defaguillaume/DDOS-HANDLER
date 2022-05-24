#!/bin/bash
read -p "choose ip Api Server :" n1
 kubeadm join $n1:6443 --token zsyq2w.c676bxzjul3upd7u --discovery-token-ca-cert-hash sha256:a720ae35d472162177f6ee39de758a5de40043f53e4a3e00aefd6f9832f3436c

 kubectl get nodes

 kubectl create deployment nginx --image=nginx

 kubectl get deployments

 kubectl create service nodeport nginx --tcp=80:80

 kubectl get svc