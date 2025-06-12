output "managed_server_output_IP"{

    value = aws_instance.managed_server.public_ip
}