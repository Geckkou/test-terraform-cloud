output "public_ip" {
  description = "This is the public IP of my web server"
  value       = aws_instance.web_server.public_ip
}

output "ec2_instance_arn" {
  value     = aws_instance.web_server.arn
  sensitive = true
}

output "data-bucket-arn" {
  value = data.aws_s3_bucket.data_bucket.arn
}

output "data-bucket-domain-name" {
  value = data.aws_s3_bucket.data_bucket.bucket_domain_name
}

output "data-bucket-region" {
  value = "The ${data.aws_s3_bucket.data_bucket.id} bucket is located in ${data.aws_s3_bucket.data_bucket.region}"
}

output "max_value" {
  value = local.maximum
}

output "min_value" {
  value = local.minimum
}