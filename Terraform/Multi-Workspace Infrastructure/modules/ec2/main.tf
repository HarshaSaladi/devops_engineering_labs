
#<blockname> <resource provider> <resource name> 
resource "aws_instance" "infra_ec2" {
# arguments
  ami           = var.ami
  instance_type = var.instance_type
  key_name               = var.key_name
  vpc_security_group_ids = var.security_group
  subnet_id              = var.subnet
  region = var.region

# conditional argument
  user_data = file(
    "${path.module}/${lookup(var.userdata, terraform.workspace, "apache.sh")}" 
    )

  tags = {
    Name        = "${terraform.workspace}-workspace"
    Description = "DevOps Instances"
  }

# lifecycle rules
  lifecycle {
    create_before_destroy = true
  }
  
}
  # user_data              = file("./modules/ec2/setup.sh")
  # user_data              = terraform.workspace == "default" ? file("${path.module}/apache.sh") : file("${path.module}/jenkins.sh")