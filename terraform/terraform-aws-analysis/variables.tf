variable "region" {
  default = "ap-southeast-1"
}

variable "prefix" {
  description = "prefix"
}

variable "environment" {
  description = "environment"
}

variable "instance_type" {
  default     = "t3.micro"
  description = "instance_type"
}

variable "department" {
  description = "department"
  default     = "devops"
}