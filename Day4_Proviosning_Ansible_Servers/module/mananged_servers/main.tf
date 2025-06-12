resource "aws_instance" "managed_server"{

    ami = var.ami_id
    instance_type = var.instance_type
    key_name = var.key_name
    tags = var.managed_server_tags
    vpc_security_group_ids = var.sg_ids
}