module "ec2" {
  source         = "./modules/ec2"
  ami            = var.ami
  instance_type  = var.instance_type
  key_name       = var.key_name
  security_group = var.security_group
  subnet         = var.subnet
  region         = var.region
}

module "s3" {
  source = "./modules/s3"
  bucket = var.bucket
}
































# resource "aws_instance" "infra_ec2" {
#   ami           = var.ami
#   instance_type = var.instance_type
#   key_name               = var.key_name
#   vpc_security_group_ids = var.security_group
#   subnet_id              = var.subnet
#   # availability_zone      = var.availability_zone
#   user_data              = file("install.sh")
#   tags = {
#     Name        = "infra_ec2"
#     Description = "Testing"
#   }
# }

# Enable logging
# export TF_LOG=ERROR
# export TF_LOG_PATH=/tmp/ProjectA.log

# Terraform import 
# terraform import <resource_type>.<resource_name> <attribute>
# $ terraform import aws_instance.webserver-2 i-026e13be10d5326f7




















# VPC
# resource "aws_vpc" "infra_vpc" {
#   cidr_block = "10.0.0.0/16"
#   tags = {
#     name = "infra_vpc"
#   }
# }

# subnet
# resource "aws_subnet" "infra_subnet" {
#   vpc_id = var.vpc_id
#   cidr_block = "10.0.1.0/24"
#   availability_zone = "us-east-2a"
#   map_public_ip_on_launch = "true"
# }

# Internet gateway
# resource "aws_internet_gateway" "infra_gateway" {
#   vpc_id = aws_instance.infra_ec2.id
#   tags = {
#     name = "infra_gateway"
#   }
# }

# route_table
# resource "aws_route_table" "infra_route_table" {
#   vpc_id = var.vpc_id
#   route {
#     cidr_block = "0.0.0.0/0"
#     gateway_id = aws_internet_gateway.infra_gateway.id
#   }
#   tags = {
#     name = "infra_route_table"
#   }
# }

# resource "aws_route_table_association" "infra_route_association" {
#   subnet_id = aws_subnet.infra_subnet.id
#   route_table_id = aws_route_table.infra_route_table.id
# }

# resource "aws_security_group" "infra_ssh_access" {
#   name = "ssh-access"
#   description = "ssh to ec2"
#   vpc_id = var.vpc_id
#   ingress {
#     from_port = 22
#     to_port = 22
#     protocol = "tcp"
#     cidr_blocks = ["0.0.0.0/0"]
#   }
#   tags = {
#     name = "infra_ssh_access"
#   }  
# }

# resource "aws_key_pair" "web" {
#   key_name = "lumen-infra.pem"
# }

# resource "aws_security_group" "ssh-access" {
#   name = "ssh-access"
#   description = "ssh to ec2"
#   ingress {
#     from_port = 22
#     to_port = 22
#     protocol = "tcp"
#     cidr_blocks = ["0.0.0.0/0"]
#   }  
# }














# resource "aws_iam_user" "infra" {
#   name = "TestUser"
#   tags = {
#     Description = "DevOps Dry Run"
#   }
# }

# resource "aws_instance" "infra-test" {
#   ami = "ami-00092b36b8a926fae"
#   instance_type = "t2.micro"
#   tags = {
#     Name = "testing run"
#   }
#   # vpc_security_group_ids = 
# }

# resource "aws_dynamodb_table" "employes" {
#   name           = "tf-state-lock"
#   billing_mode = "PAY_PER_REQUEST"
#   hash_key       = "employe_id"

#   attribute {
#     name = "employe_id"
#     type = "S"
#   }
#   tags = {
#     name = "Terraform state-lock"
#   }
# }
# resource "aws_dynamodb_table_item" "employes-details" {
#   table_name = aws_dynamodb_table.employes.name
#   hash_key   = aws_dynamodb_table.employes.hash_key
#   item       = <<EOF
#   {
#     "name": {"S": "Test" },
#     "age": {"N": "27"},
#     "employe_id": {"S": "1"}
#   }
# EOF
# }