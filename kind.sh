#!/bin/bash

# Install KinD
go install sigs.k8s.io/kind@v0.20.0

# Create a cluster
kind create cluster --name ignite

# Set the kubectl context to the new cluster
kubectl config use-context kind-ignite

kind get kubeconfig --name=ignite > kube.yaml