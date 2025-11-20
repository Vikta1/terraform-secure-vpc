variable "aws_region" {
  description = "AWS region to deploy resources in"
  type        = string
}

variable "project_name" {
  description = "Name prefix for all resources"
  type        = string
}

variable "my_ip" {
  description = "Your public IP address to allow SSH access (without /32)"
  type        = string
}
