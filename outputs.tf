#############################################
# VPC Outputs
#############################################

output "vpc_id" {
  description = "ID of the VPC"
  value       = aws_vpc.main.id
}

#############################################
# Subnet Outputs
#############################################

output "public_subnet_id" {
  description = "Public subnet ID"
  value       = aws_subnet.public_a.id
}

output "private_subnet_id" {
  description = "Private subnet ID"
  value       = aws_subnet.private_a.id
}

#############################################
# Security Group Outputs
#############################################

output "bastion_sg_id" {
  description = "Security group ID for bastion host"
  value       = aws_security_group.bastion.id
}

output "app_sg_id" {
  description = "Security group ID for private application"
  value       = aws_security_group.app.id
}

#############################################
# EC2 Outputs
#############################################

output "bastion_public_ip" {
  description = "Public IP of the bastion host"
  value       = aws_instance.bastion.public_ip
}

output "app_private_ip" {
  description = "Private IP of the application server"
  value       = aws_instance.app.private_ip
}
