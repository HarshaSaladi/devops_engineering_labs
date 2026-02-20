# provider block
provider "aws" {
    region = "ap-south-1"
}

resource "aws_s3_bucket" "tf-backend" {
    bucket = "infra-tfstatefile"
    # lifecycle rules
    lifecycle {
      prevent_destroy = true
    }

}

