# output varibles

output "Instance_IP" {
  value = aws_instance.infra_ec2.public_ip
}