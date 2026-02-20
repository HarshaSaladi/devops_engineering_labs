# varible declaration which helps to improve reusablity

variable "security_group" {
  type = list(string)
  }
variable "subnet" {
}
variable "ami" {
}
variable "instance_type" {
  type    = string
}
variable "region" {
  type    = string
}
variable "key_name" {
}
variable "userdata" {
  type = map(string)
  default = {
    "default" = "apache.sh"
    "jenkins" = "jenkins.sh"
  }
  
}
# variable "vpc_id" {
# }
# variable "availability_zone" {
# }