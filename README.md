# My Kubernetes Infrastructure Repository

This repository contains the Terraform configuration files and scripts to set up a Kubernetes infrastructure with Kind and deploy an Nginx Ingress Controller using Helm.

## Prerequisites
- Terraform (version X.X.X) 
	- [Install Terraform](https://github.com/mohammedhank91/bash/blob/main/install_terraform.sh) 
-  Kind (Kubernetes in Docker) -
	-  [Install Kind](https://github.com/mohammedhank91/bash/blob/main/install-kind.sh) 
- Helm (version X.X.X) 
	-  [Install Helm](https://github.com/mohammedhank91/bash/blob/main/install-helm.sh) 
-  Docker (if not installed) 
	- [Install Docker](https://github.com/mohammedhank91/bash/blob/main/install-docker.sh)

## Usage

  

1. Clone the repository:

```bash
git clone https://github.com/mohammedhank91/kind_terraform.git
cd kind_terraform
```

Set up the Kubernetes cluster using Kind:
```./apply.sh```

Customize the deployment by modifying nginx_ingress_values.yaml, variables.tf, and versions.tf.

## Local Development

This setup is intended for local development and testing purposes.

## **Files:**

 - *demo.sh*: Script to set up the Kind Kubernetes cluster.
 - *kind_cluster.tf*: Terraform configuration to define the Kind cluster.
 - *nginx_ingress.tf*: Terraform configuration to deploy the Nginx Ingress Controller.
 - *nginx_ingress_values.yaml*: Helm values file to customize the Nginx  Ingress deployment.
 - *variables.tf*: Terraform variables file to set up configurable  variables.
 - *versions.tf*: Terraform versions file to define the required versions.

## License
This project is licensed under the [MIT License](mohammedhank91.github.io).
