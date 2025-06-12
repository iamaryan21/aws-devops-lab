resource "aws_security_group" "sg_ssh"{

    description = "Allow SSH connection"
    name = "sg_ssh"

    ingress{

        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = var.allowed_cidr_blocks
    }

    egress{

        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = var.allowed_cidr_blocks
    }

    tags = {
      "Environment" = "dev"
    }
}