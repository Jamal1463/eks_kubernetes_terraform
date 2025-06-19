# Creating Output's
output "my_s3_bucket_complete_details" {
  value = aws_s3_bucket.enterprise_backend_state
}