provider "aws" {
    region = var.aws_region
}

resource "aws_instance" "resource_name"{
    ami = var.ami_id
    instance_type = var.instance_type
    key_name = var.key_name

    tags = {
        name = "devops-lab-instance"
        environment = "dev"
    }

    vpc_security_group_ids = [aws_security_group.devops_sg.id]  # Attach SG
}

resource "aws_security_group" "devops_sg"{
    name = "devops-sg"
    description = "Allow SSH inbound traffic"

    ingress{
        description = "SSH from my IP"
        from_port = "22"
        to_port = "22"
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    egress{
        from_port = "0"
        to_port = "0"
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }
}