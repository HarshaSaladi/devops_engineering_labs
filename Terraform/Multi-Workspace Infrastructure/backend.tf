# Backend is used to store and manage Terraform state safely.
terraform {
  backend "s3" {
    bucket = "infra-tfstatefile"
    key    = "terraform.tfstate"
    region = "ap-south-1"
    use_lockfile = true
  }
}