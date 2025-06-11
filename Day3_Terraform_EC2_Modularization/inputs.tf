variable "bucket_name"{

    type = string
}
variable "bucket_policy" {
    type = string
}
//variable "tags"{
//    type = map(string)
//}

variable "user_name"{

    description = "Name of the user"
    type = string
}

variable "tags_ec2"{

    description = "Tags"
    type = map(string)
}

variable "policy_name" {
  
}

variable "policy_file"{
    
}

variable "ami_id"{}

variable "region_name" {
  
}

variable "instance_type" {
  
}

variable "key_name" {
  
}

variable "tags" {
  
}