
terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.5"
    }
  }
}

resource "local_file" "devops_demo" {
  filename = "devops-demo.txt"
  content  = "Hello! Terraform is working through HCP Terraform."
}
