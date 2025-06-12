variable "instance_type"{

    description = "Instance Type"
    type = string
}

variable "key_name"{

    description = "Key for SSH connection"
    type = string
}

variable "ansible_control_tags"{

    description = "Tags"
    type = map(string)
}

variable "ami_name"{

    description = "AMI value to be used"
    type = string
}

variable "sg_ids" {

    description = "Security Groups to be attached to the EC2 instance"
    type = list(string)
  
}