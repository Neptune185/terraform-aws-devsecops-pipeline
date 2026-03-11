output "security_reports_bucket_name" {
  description = "Name of the S3 bucket used for security reports"
  value       = aws_s3_bucket.security_reports.bucket
}

output "security_reports_bucket_arn" {
  description = "ARN of the S3 bucket used for security reports"
  value       = aws_s3_bucket.security_reports.arn
}