variable "aws_region" {
    description = "The AWS region to deploy resources in"
    type        = string
    default     = "ap-south-1"
}
variable "aws_instance_name" {
    description = "The name of the EC2 instance"
    type        = string
}
variable "ami" {
    description = "The AMI ID to use for the EC2 instance"
    type        = string
    
}
variable "instance_type" {
    description = "The instance type for the EC2 instance"
    type        = string
}
variable "key_name" {
    description = "The name of the key pair to use for the EC2 instance"
    type        = string
}
variable "subnet_id" {
    description = "The ID of the subnet to launch the EC2 instance in"
    type        = string
}
variable "vpc_security_group_ids" {
    description = "A list of security group IDs to associate with the EC2 instance"
    type        = list(string)
}
variable "security_group_name" {
    description = "The name of the security group"
    type        = string
}
variable "vpc_id" {
    description = "The ID of the VPC"
    type        = string
}

variable "associate_public_ip_address" {
    description = "Whether to associate a public IP address with the EC2 instance"
    type        = bool
}
variable "vpc_cidr_block" {
    description = "The CIDR block for the VPC"
    type        = string
}
variable "subnet_cidr_block" {
    description = "The CIDR block for the subnet"
    type        = string
}
variable "subnet_map_public_ip_on_launch" {
    description = "Whether to map public IP addresses on launch for the subnet"
    type        = bool
}
variable "vpc_tags" {
    description = "Tags for the VPC"
    type        = map(string)
}
variable "vpc_name" {
    description = "The name of the VPC"
    type        = string
}
variable "subnet_tags" {
    description = "Tags for the subnet"
    type        = map(string)
}
variable "instance_tags" {
    description = "Tags for the EC2 instance"
    type        = map(string)
}
variable "internet_gateway_tags" {
    description = "Tags for the Internet Gateway"
    type        = map(string)
}
variable "route_table_tags" {
    description = "Tags for the Route Table"
    type        = map(string)
}
variable "internet_gateway_name" {
    description = "The name of the Internet Gateway"
    type        = string
}
variable "route_table_name" {
    description = "The name of the Route Table"
    type        = string
}
variable "route_table_association_name" {
    description = "The name of the Route Table Association"
    type        = string
}
variable "ingress_from_port" {
    description = "The starting port for the ingress rule"
    type        = number
}
variable "route_cidr_block" {
    description = "The CIDR block for the route"
    type        = string
}
variable "route_gateway_id" {
    description = "The ID of the gateway for the route"
    type        = string
}
variable "internet_gateway_id" {
    description = "The ID of the Internet Gateway"
    type        = string
}
variable "route_table_id" {
    description = "The ID of the Route Table"
    type        = string
}
variable "route_table_association_id" {
    description = "The ID of the Route Table Association"
    type        = string
}
variable "route_table_association_subnet_id" {
    description = "The ID of the subnet for the Route Table Association"
    type        = string
}

