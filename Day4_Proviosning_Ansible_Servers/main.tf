provider "aws"{
    region = "ap-south-1"
}

module "sg" {

    source = "./module/sg"
    allowed_cidr_blocks = var.allowed_cidr_blocks
  
}

module "ansible_control" {
  
  source = "./module/ansible_control"
  ami_name = var.ami_name
  instance_type = var.instance_type
  key_name = var.key_name
  ansible_control_tags = var.ansible_control_tags
  sg_ids = [module.sg.sg_id]
}

module "managed_servers"{

  source = "./module/mananged_servers"
  ami_id = var.ami_name
  instance_type = var.instance_type
  key_name = var.key_name
  managed_server_tags = var.managed_server_tags
  sg_ids = [module.sg.sg_id]
}