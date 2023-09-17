#!/bin/bash

# Create a cluster
kind create cluster --name ignite

# Set the kubectl context to the new cluster
kubectl config use-context kind-ignite

# Download the kubeconfig for the cluster and store in kube.yaml file
kind get kubeconfig --name=ignite > kube.yaml
