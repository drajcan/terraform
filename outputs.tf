# --- root/outputs.tf ---

output "aws_s3_bucket_name" {
    description = "AWS S3 bucket name"
    value = aws_s3_bucket.my_first_bucket.id
}

output "aws_s3_bucket_arn" {
    description = "AWS S3 bucket arn"
    value = aws_s3_bucket.my_first_bucket.arn
}
