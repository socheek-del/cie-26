output "dashboard_public_ip" {
  value = aws_eip.dashboard_service.public_ip
}

output "dashboard_url" {
  value = "http://${aws_eip.dashboard_service.public_ip}"
}
