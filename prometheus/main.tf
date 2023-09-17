terraform {
  required_providers {
    helm = {
      source = "hashicorp/helm"
      version = "2.11.0"
    }
  }
}

provider "helm" {
  kubernetes {
    config_path = "~/.kube/config"
  }
}

resource "helm_release" "monitor" {
  name = "prometheus-community"
  repository = "https://prometheus-community.github.io/helm-charts"
  chart = "kube-prometheus-stack"
}