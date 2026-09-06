resource "tls_private_key" "keygen" {
  algorithm = "ED25519"
}

locals {
  private_key_name = "${var.prefix}-ssh-key.pem"
}

resource "aws_key_pair" "counting_service_keypair" {
  key_name   = local.private_key_name
  public_key = tls_private_key.keygen.public_key_openssh

  tags = {
    Name : "${var.prefix}-key"
  }
}