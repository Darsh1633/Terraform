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
variable "associate_public_ip_address" {
    description = "Whether to associate a public IP address with the EC2 instance"
    type        = bool
}
variable "instance_tags" {
    description = "Tags to apply to the EC2 instance"
    type        = map(string)
}