resource "aws_vpc" "main" {
  cidr_block       = var.private_network_cidr
  instance_tenancy = "default"

  tags = {
    Name = "ntier primary"
  }
}

resource "aws_subnet" "main" {
  vpc_id     = aws_vpc.main.id
  count = length(var.private_subnets)
  cidr_block = cidrsubnet(var.private_network_cidr,8,count.index)

  tags = {
    Name = var.private_subnets[count.index]
  }
}