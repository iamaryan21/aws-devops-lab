#Provider will be mentioned in the file that will consume this
#provider "aws"{
#    region = var.region_name
#}

resource "aws_instance" "demo_ec2"{

    ami = var.ami_id
    instance_type = var.instance_type
    vpc_security_group_ids = [aws_security_group.demo_sg.id]
    key_name = var.key_name
    tags = var.tags

    //user_data = templatefile("${path.module}/install_httpd.sh", {})
}

resource "aws_security_group" "demo_sg"{

    name = "demo-sg"
    description = "Opening port 22 for SSH Protocol"

    ingress{

        description = "Opening port 22"
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    ingress{

        description = "Enable HTTP Port"
        from_port = 80
        to_port = 80
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    egress{

        from_port = 0
        to_port = 0
        cidr_blocks = ["0.0.0.0/0"]
        protocol = "-1"
    }
}