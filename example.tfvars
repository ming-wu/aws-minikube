# AWS region where should the Minikube be deployed
aws_region    = "us-east-1"

# Name for role, policy and cloud formation stack (without DBG-DEV- prefix)
cluster_name  = "dev-minikube"

# Instance type
aws_instance_type = "t2.2xlarge"

# SSH key for the machine
ssh_public_key = "~/.ssh/id_rsa.pub"

# Subnet ID where the minikube should run
aws_subnet_id = "subnet-fcbbd1b7"

# DNS zone where the domain is placed
hosted_zone = "my-company.com"
hosted_zone_private = true

# Tags
tags = {
  Application = "Frontiers - Minikube"
}

# Kubernetes Addons
# Supported addons:
# 
# https://raw.githubusercontent.com/scholzj/terraform-aws-minikube/master/addons/storage-class.yaml
# https://raw.githubusercontent.com/scholzj/terraform-aws-minikube/master/addons/heapster.yaml
# https://raw.githubusercontent.com/scholzj/terraform-aws-minikube/master/addons/dashboard.yaml
# https://raw.githubusercontent.com/scholzj/terraform-aws-minikube/master/addons/external-dns.yaml
# https://raw.githubusercontent.com/scholzj/terraform-aws-minikube/master/addons/ingress.yaml (External ELB load balancer)
# https://raw.githubusercontent.com/scholzj/terraform-aws-minikube/master/addons/ingress-internal.yaml (Internal ELB loadbalancer)

addons = [
  "https://raw.githubusercontent.com/scholzj/terraform-aws-minikube/master/addons/dashboard.yaml"
]
