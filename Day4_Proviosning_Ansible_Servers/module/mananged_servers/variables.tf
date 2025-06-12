variable "ami_id"{
    type = string
}

variable "instance_type"{
    type = string
}

variable "key_name"{
    type = string
}

variable "managed_server_tags" {
  type = map(string)
}

variable "sg_ids" {
  type = list(string)
}