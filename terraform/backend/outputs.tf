output "bucket_name" {
  value       = aws_s3_bucket.tf_state_backend.bucket
  description = "Bucket name for the terraform state"
}

output "dynamodb_table_name" {
  value       = aws_dynamodb_table.tf_lock.name
  description = "Table name for the terraform lock"
}