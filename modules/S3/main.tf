resource "aws_s3_bucket" "enterprise_backend_state" {
  bucket = "eks-terra-bucket-098498"

  lifecycle {
    prevent_destroy = true
  }
}

resource "aws_s3_bucket_versioning" "versioning_example" {
  bucket = aws_s3_bucket.enterprise_backend_state.id
  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket_server_side_encryption_configuration" "example" {
  bucket = aws_s3_bucket.enterprise_backend_state.bucket

  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }
  }
}

terraform {
  backend "s3" {
    bucket = "eks-terra-bucket-098498"
    key    = "backend/ToDo-App.tfstate"
    region = "us-east-1"
    encrypt        = true
  #  dynamodb_table = "dynamoDB-terra"
    use_lockfile = true
  }
}
