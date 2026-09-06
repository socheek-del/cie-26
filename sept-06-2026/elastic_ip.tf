resource "aws_eip" "dashboard_service" {
  domain = "vpc"

  # Keep the address allocated when the instances are replaced. A full
  # terraform destroy will stop at this resource instead of releasing it.
  lifecycle {
    prevent_destroy = true
  }

  tags = {
    Name = "${var.prefix}-dashboard-eip"
  }
}

resource "aws_eip_association" "dashboard_service" {
  allocation_id = aws_eip.dashboard_service.id
  instance_id   = aws_instance.dashboard_service.id
}
