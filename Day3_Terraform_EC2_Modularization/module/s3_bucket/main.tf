resource "aws_s3_bucket" "s3_demo"{

    bucket = var.bucket_name
    tags = var.tags

}

resource "aws_s3_bucket_public_access_block" "s3_public_access" {
  
  bucket = aws_s3_bucket.s3_demo.id
  block_public_acls = false
  block_public_policy = false
  ignore_public_acls = false
  restrict_public_buckets = false

}

resource "aws_s3_bucket_policy" "s3_policy"{

    bucket = aws_s3_bucket.s3_demo.id
    policy = var.bucket_policy
}

