output "sg_ssh_id"{

    value = module.sg.sg_id
}

output "ansible_control_server_public_ip"{

    value = module.ansible_control.ansible_control_pulic_ip
}

output "managed_server_public_ip"{
    value = module.managed_servers.managed_server_output_IP
}