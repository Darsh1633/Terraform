#terraform.tfvars

aws_region = "ap-south-1"
aws_instance_name = "MyEC2Instance"
ami = "ami-01a00762f46d584a1"
instance_type = "t3.micro"      
key_name = "My-key"

subnet_id = "aws_subnet.my_subnet.id"
vpc_security_group_ids = ["aws_security_group.my_security_group.id"]
associate_public_ip_address = true
instance_tags = {
  Name = "MyEC2Instance"
}   
security_group_name = "my-security-group"
vpc_name = "My_vpc"
vpc_id = "aws_vpc.my_vpc.id"  
vpc_cidr_block = "10.0.0.0/16"  
vpc_tags = {
  Name = "My_vpc"
}       
ingress_from_port = 22
subnet_cidr_block = "10.0.1.0/24"
subnet_map_public_ip_on_launch = true
subnet_tags = {
  Name = "My_subnet"
}
internet_gateway_tags = {
  Name = "My_internet_gateway"
}
internet_gateway_id = "aws_internet_gateway.my_internet_gateway.id"
internet_gateway_name = "My_internet_gateway"
route_table_id = "aws_route_table.my_route_table.id"
route_table_name = "my_route_table"
route_table_tags = {
  Name = "my_route_table"
}
route_cidr_block = "0.0.0.0/0"
route_gateway_id = "aws_internet_gateway.my_internet_gateway.id"
route_table_association_id = "aws_route_table_association.my_route_table_association"
route_table_association_name = "my_route_table_association"
route_table_association_subnet_id = "aws_subnet.my_subnet.id"




