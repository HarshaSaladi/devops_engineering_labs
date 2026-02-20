# output variables to print the values at apply
output "ec2_public_ip" {
  value = module.ec2.Instance_IP
}