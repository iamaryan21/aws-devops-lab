variable "region_name"{
    
    description = "Region Name"
    type = string
}

variable "ami_id"{

    description = "AMI ID"
    type = string
}

variable "instance_type"{

    description = "Instance Type"
    type = string
}

variable "key_name" {
  
    description = "Key value"
    type = string
}

variable "tags"{
    description = "Tag for the EC2 instance"
    type = map(string)
}