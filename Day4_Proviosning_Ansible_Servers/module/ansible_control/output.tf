output "ansible_control_pulic_ip"{

    value = aws_instance.control_server.public_ip
}