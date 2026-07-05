provider "aws" {
  region = var.aws_region
}

resource "aws_instance" "MyEC2Instance" {
  ami                         = var.ami
  instance_type               = var.instance_type
  key_name                    = var.key_name
  subnet_id                   = aws_subnet.my_subnet.id
  vpc_security_group_ids     = [aws_security_group.my_security_group.id]
  associate_public_ip_address = var.associate_public_ip_address
  tags                        = var.instance_tags
}

resource "aws_security_group" "my_security_group" {
  name        = var.security_group_name
  description = "Allow SSH and HTTP traffic"
  vpc_id      = aws_vpc.my_vpc.id

  ingress {
    from_port   = var.ingress_from_port
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_vpc" "my_vpc"{

  cidr_block = var.vpc_cidr_block
  tags       = var.vpc_tags
}

resource "aws_subnet" "my_subnet"{ 
  vpc_id                  = aws_vpc.my_vpc.id
  cidr_block              = var.subnet_cidr_block
  map_public_ip_on_launch = var.subnet_map_public_ip_on_launch
  tags                    = var.subnet_tags
}

resource "aws_internet_gateway" "my_internet_gateway" {
  vpc_id = aws_vpc.my_vpc.id
  tags   = var.internet_gateway_tags
}

resource "aws_route_table" "my_route_table" {
  vpc_id = aws_vpc.my_vpc.id

  route {
    cidr_block = var.route_cidr_block
    gateway_id = aws_internet_gateway.my_internet_gateway.id
  }
}

resource "aws_route_table_association" "my_route_table_association" {
  subnet_id      = aws_subnet.my_subnet.id
  route_table_id = aws_route_table.my_route_table.id
}

