provider "aws"{

    region = "ap-south-1"
}

module "EC2"{
    source = "./module/EC2"
    ami_id = "ami-0f535a71b34f2d44a"
    key_name = "devops-key"
    instance_type = "t2.micro"
    region_name = "ap-south-1"
}

module "s3_bucket"{
    source = "./module/s3_bucket"
    bucket_name = var.bucket_name
    bucket_policy = file(var.bucket_policy)
    tags = var.tags
}



#region_name = "ap-south-1"
#ami_id = "ami-0f535a71b34f2d44a" # Amazon Linux 2
#instance_type = "t2.micro"
#key_name = "devops-key"