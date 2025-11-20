resource "aws_vpc" "main" {
  cidr_block           = "10.0.0.0/16"
  enable_dns_support   = true
  enable_dns_hostnames = true

  tags = {
    project_name = "var.project_name"
  }
}

#############################################
# Public Subnet A (AZ1)
#############################################

resource "aws_subnet" "public_a" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = "10.0.1.0/24"
  map_public_ip_on_launch = true
  availability_zone       = "${var.aws_region}a"

  tags = {
    Name         = "${var.project_name}-public-a"
    project_name = var.project_name
  }
}

#############################################
# Private Subnet A (AZ1)
#############################################

resource "aws_subnet" "private_a" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "10.0.2.0/24"
  availability_zone = "${var.aws_region}a"

  tags = {
    Name         = "${var.project_name}-private-a"
    project_name = var.project_name
  }
}
