## =========================================
## VPC
## =========================================
resource "aws_vpc" "my_vpc" {
  cidr_block = var.cidr_block_vpc

  tags = {
    Name = "${var.prefix}-vpc"
  }
}

## =========================================
## Subnet
## =========================================
resource "aws_subnet" "counting_service" {
  vpc_id                  = aws_vpc.my_vpc.id
  cidr_block              = var.cidr_block_subnet_1
  map_public_ip_on_launch = true

  tags = {
    Name = "counting-service-subnet"
  }
}

resource "aws_subnet" "dashboard_service" {
  vpc_id     = aws_vpc.my_vpc.id
  cidr_block = var.cidr_block_subnet_2

  tags = {
    Name = "dashboard-service-subnet"
  }
}



## =========================================
## Security Group
## =========================================
resource "aws_security_group" "counting_service" {
  name   = "counting-service-security-group"
  vpc_id = aws_vpc.my_vpc.id

  ingress {
    description     = "Allow ssh from dashboard service only"
    protocol        = "tcp"
    from_port       = 22
    to_port         = 22
    security_groups = [aws_security_group.dashboard_service.id]
  }

  ingress {
    description     = "Only dashboard service should be able to access"
    protocol        = "tcp"
    from_port       = var.counting_service_port
    to_port         = var.counting_service_port
    security_groups = [aws_security_group.dashboard_service.id]
  }

  egress {
    description = "All traffic allowed"
    protocol    = "-1"
    from_port   = 0
    to_port     = 0
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "counting-service-security-group"
  }
}

resource "aws_security_group" "dashboard_service" {
  name        = "dashboard-service-security-group"
  description = "Allow TLS inbound traffic and all outbound traffic"
  vpc_id      = aws_vpc.my_vpc.id

  tags = {
    Name = "dashboard-service-security-group"
  }
}
