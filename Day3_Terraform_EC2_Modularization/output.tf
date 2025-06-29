output "public_ip"{
    value = module.EC2.public_IP
}

output "s3_bucket_id" {
  value = module.s3_bucket.bucket_id
}

output "user_name" {
  value = module.iam_user.user_name
}