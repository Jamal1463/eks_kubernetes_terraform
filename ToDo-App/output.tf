# Creating Output's

output "enterprise_backend_state_versioning"{
    value = aws_s3_bucket.enterprise_backend_state.versioning[0].enabled
}

output "enterprise_backend_state_complete_details" {
    value = aws_s3_bucket.enterprise_backend_state
}
