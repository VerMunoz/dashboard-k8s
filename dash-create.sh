#!/bin/bash
kubectl create -f kubernetes-dashboard.yaml 
kubectl create -f dashboard-admin.yaml

nohup kubectl proxy --address="192.168.0.94" -p 443 --accept-hosts='^*$' &
