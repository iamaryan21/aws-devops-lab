#!/bin/bash

sudo apt update -y
sudo apt install ansible -y
echo "Ansible installed" > /home/ubuntu/ansible-setup.log