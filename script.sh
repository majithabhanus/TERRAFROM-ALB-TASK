#!/bin/bash
yum update -y
amazon-linux-extras install nginx1 -y
systemctl enable nginx
systemctl start nginx
echo "<h1>${HOSTNAME} - NGINX via ALB</h1>" > /usr/share/nginx/html/index.html
