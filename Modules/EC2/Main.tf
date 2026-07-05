provider "aws" {
  region = var.aws_region
}

resource "aws_instance" "MyEC2Instance" {
  ami                         = var.ami
  instance_type               = var.instance_type
  key_name                    = var.key_name
  subnet_id                   = aws_subnet.my_subnet.id
  associate_public_ip_address = var.associate_public_ip_address
  tags                        = var.instance_tags
}