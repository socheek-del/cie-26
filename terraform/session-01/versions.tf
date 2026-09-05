terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }

    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=5.0.0"
    }


    local = {
      source  = "hashicorp/local"
      version = "2.9.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region  = "ap-southeast-1"
  profile = "master-programmatic-admin-role"
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
}

provider "local" {
  # Configuration options
}
