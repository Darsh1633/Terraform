provider "aws" {
  region = "ap-south-1" 
}
resource "aws_instance" "my_ec2_instance" {
  ami           = "ami-01a00762f46d584a1" # Replace with a valid AMI ID for your region
  instance_type = "t3.micro"
  key_name = "My-key"
  subnet_id = aws_subnet.my_subnet.id
  vpc_security_group_ids = [aws_security_group.my_security_group.id]
  associate_public_ip_address = true
  
  tags = {
    Name = "MyEC2Instance"
  }
}
resource "aws_security_group" "my_security_group" {
  name        = "my-security-group"
  description = "Allow SSH and HTTP traffic"
  vpc_id      = aws_vpc.My_vpc.id

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
resource "aws_vpc" "My_vpc" {
    cidr_block = "10.0.0.0/16"
    tags = {
        Name = "My_vpc"
}
}
resource "aws_subnet" "my_subnet" {
  vpc_id     = aws_vpc.My_vpc.id
  cidr_block = "10.0.1.0/24"
  map_public_ip_on_launch = true
    tags = {
        Name = "My_subnet"
    }
}
resource "aws_internet_gateway" "my_internet_gateway" {
  vpc_id = aws_vpc.My_vpc.id
  tags = {
    Name = "My_internet_gateway"
  }
}
resource "aws_route_table" "my_route_table" {
  vpc_id = aws_vpc.My_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.my_internet_gateway.id
  }
}
resource "aws_route_table_association" "my_route_table_association" {
  subnet_id      = aws_subnet.my_subnet.id
  route_table_id = aws_route_table.my_route_table.id
}

