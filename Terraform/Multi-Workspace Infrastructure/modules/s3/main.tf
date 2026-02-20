#<blockname> <resource provider> <resource name> 
resource "aws_s3_bucket" "devops_iac" {
  bucket = var.bucket
  tags = {
    Description = "devops-iac"
  }
}

# resource "aws_s3_object" "secrets" {
#   bucket = aws_s3_bucket.devops-iac.id
#   key = "keys/infra.pem"
#   source = "infra.pem"
# }
# aws s3 cp s3://<bucket-name>/keys/infra.pem .
# chmod 400 infra.pem