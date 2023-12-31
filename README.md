# Kubernetes In Docker Development Project

## Tasks

### Task 1: Setting Up a Kubernetes Cluster with Kind

1. Write a bash script to deploy a Kind cluster locally.
2. Download the kubeconfig for the cluster and securely store it.

### Task 2: Dockerize and Deploy Hello World Express

1. Dockerize a simple Hello World Express application.
2. Deploy the Docker image to Docker Hub.

### Task 3: Create a Kubernetes Deployment Manifest

1. Create a Kubernetes deployment manifest for the Node.js app.
2. Store the manifest in the `k8s` directory.

### Task 4: Deploy Kubernetes Manifest with Terraform

1. Use the kubectl Terraform provider to write Terraform code.
2. Deploy the Kubernetes manifest to the Kind cluster.

### Bonus Task: Set Up Monitoring with Kube-Prometheus Stack

1. Use the Terraform Helm provider to set up monitoring and observability with the Kube-Prometheus stack.


## Procedures

### Getting Started

To get started with this project, follow these steps:

#### Clone the Repository

1. Open your terminal.

2. Use the `git clone` command to clone the repository to your local machine. 

   ```bash
   git clone https://github.com/0xceejay/ignite
   cd ignite
### Task 1: Setting Up a Kubernetes Cluster with Kind

To run the `kind.sh` script 

   ```bash
   chmod +x kind.sh
   ./kind.sh
   ```
![](images/kind.png)

### Task 2: Dockerize and Deploy Hello World Express
```bash
   cd app
   docker build -t app .
   docker tag app {YOUR_DOCKER_USERNAME}/app:app
   docker push {YOUR_DOCKER_USERNAME}/app:app
   ```
![](images/docker.png)
### Task 3: Create a Kubernetes Deployment Manifest
[Deployment Manifest](https://github.com/0xceejay/ignite/blob/main/k8s/deployment.yaml)
### Task 4: Deploy Kubernetes Manifest with Terraform
```bash
   cd terraform
   terraform init
   terraform apply --auto-approve
   ```
![](images/terraform.png)
![](images/terraform1.png)

### Bonus Task: Set Up Monitoring with Kube-Prometheus Stack
```bash
   cd ..
   cd prometheus
   terraform init
   terraform apply --auto-approve
   ```
![](images/prometheus.png)
![](images/prometheus1.png)

```bash
kubectl port-forward svc/prometheus-community-kube-prometheus 9090:9090 -n default
   ```
![](images/portforwarding.png)

go to [http://localhost:9090/](http://localhost:9090/)
![](images/dashboard.png)
![](images/dashboard1.png)

### TO DELETE ALL
```bash
  kind delete cluster --name ignite
   ```
![](images/delete.png)