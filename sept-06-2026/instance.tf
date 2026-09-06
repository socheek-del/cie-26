data "aws_ami" "ubuntu" {
  most_recent = true
  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd-gp3/ubuntu-noble-24.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"]
}

resource "aws_instance" "counting_service" {
  ami                         = data.aws_ami.ubuntu.id
  instance_type               = var.instance_type
  key_name                    = aws_key_pair.counting_service_keypair.key_name
  associate_public_ip_address = false
  subnet_id                   = aws_subnet.counting_service.id
  vpc_security_group_ids      = [aws_security_group.counting_service.id]

  tags = {
    Name = var.counting_service
  }
}

resource "aws_instance" "dashboard_service" {
  ami                         = data.aws_ami.ubuntu.id
  instance_type               = var.instance_type
  key_name                    = aws_key_pair.counting_service_keypair.key_name
  associate_public_ip_address = true
  subnet_id                   = aws_subnet.dashboard_service.id
  vpc_security_group_ids      = [aws_security_group.dashboard_service.id]

  tags = {
    Name = var.counting_service
  }
}
