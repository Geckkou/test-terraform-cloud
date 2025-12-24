output "public_ip" {
  description = "This is the public IP of my web server"
  value       = aws_instance.web_server.public_ip
}

output "ec2_instance_arn" {
  value     = aws_instance.web_server.arn
  sensitive = true
}

output "public_ip_server_subnet_1" {
  value = aws_instance.web_server.public_ip
}

output "public_dns_server_subnet_1" {
  value = aws_instance.web_server.public_dns
}

output "environment" {
  value = var.environment
}

output "public_ip_web_app" {
  value = aws_instance.web_server.public_ip
}

output "public_dns_web_app" {
  value = aws_instance.web_server.public_dns
}