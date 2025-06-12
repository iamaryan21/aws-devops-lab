resource "aws_instance" "control_server"{

    ami = var.ami_name
    instance_type = var.instance_type
    key_name = var.key_name
    tags = var.ansible_control_tags
    //vpc_security_group_ids = [aws_security_group.sg_ssh.id]
    vpc_security_group_ids = var.sg_ids
    user_data = templatefile("${path.module}/install_ansible.sh", {})

}


# resource "aws_security_group" "sg_ssh"{

#     description = "Allow incoming SSH connection"
#     name = "sg_ssh"

#     ingress{

#         from_port = 22
#         to_port = 22
#         protocol = "tcp"
#         cidr_blocks = var.allowed_ssh_cidr

#     }

#     egress{

#         from_port = 0
#         to_port = 0
#         protocol = -1
#         cidr_blocks = var.allowed_ssh_cidr
#     }

#     tags = {
#       "Environment" = "dev"
#       "Owner" = "Aryan"
#     }
# }