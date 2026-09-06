variable "region" {
  default = "ap-southeast-1"
}

variable "counting_service" {
  default = "Counting Service"
}

variable "dashboard_service" {
  default = "Dashboard Service"
}

variable "instance_type" {
  default = "t3.micro"
}

variable "prefix" {
  default = "counting-dashboard-service"
}

variable "counting_service_port" {
  default = "8001"
}

variable "cidr_block_vpc" {
  default = "172.16.0.0/16"
}

variable "cidr_block_subnet_1" {
  default = "172.16.1.0/24"
}

variable "cidr_block_subnet_2" {
  default = "172.16.2.0/24"
}
