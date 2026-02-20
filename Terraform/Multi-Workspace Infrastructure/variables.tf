# varibles file define the varibles that terraform expectes 
variable "security_group" {
  type = list(string)
}
variable "subnet" {
}
variable "ami" {
}
variable "instance_type" {
  type = string
}
variable "region" {
  type = string
}
variable "key_name" {
}
variable "bucket" {
}