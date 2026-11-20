
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = var.subscription_id
}

variable "subscription_id" {
  type      = string
  sensitive = true
}

resource "azurerm_resource_group" "demo" {
  name     = "rg-hcp-tfe-learning"
  location = "Central India"
}
