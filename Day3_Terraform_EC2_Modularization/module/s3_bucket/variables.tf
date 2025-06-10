variable "bucket_name"{

    description = "s3 bucket name"
    type = string
}

variable "tags"{

    description = "Tags to be applied to the bucket"
    type = map(string)
    default = {}
}

variable "bucket_policy" {
    
    description = "JSON bucket policy"
    type = string
}