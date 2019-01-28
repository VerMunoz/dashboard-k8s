#!/bin/bash


kubectl delete serviceaccount cluster-admin-dashboard-sa
kubectl -n kube-system delete Secret kubernetes-dashboard-certs
kubectl -n kube-system delete Secret kubernetes-dashboard-key-holder
kubectl -n kube-system delete Role kubernetes-dashboard-minimal
kubectl -n kube-system delete RoleBinding kubernetes-dashboard-minimal
kubectl -n kube-system delete service kubernetes-dashboard
kubectl -n kube-system delete serviceaccount kubernetes-dashboard
kubectl delete -n kube-system deployment kubernetes-dashboard

