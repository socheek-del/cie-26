terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }

    vault = {
      source  = "hashicorp/vault"
      version = "5.11.0"
    }
  }
}

provider "vault" {
  address = "http://127.0.0.1:8200"
  token   = var.vault-token1
  alias   = "vrd1"
}

provider "vault" {
  address = "http://0.0.0.0:8202"
  token   = var.vault-token2
  alias   = "vrd2"
}