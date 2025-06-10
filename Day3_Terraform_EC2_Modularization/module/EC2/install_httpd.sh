#!/bin/bash
yum update -y
yum install -y httpd
systemctl enable httpd
systemctl start httpd
echo "<h1>Welcome to DevOps Lab - $(hostname -f)</h1>" > /var/www/html/index.html
