#!/bin/bash

sudo yum install httpd -y
sudo systemctl start httpd
sudo systemctl enable httpd
echo "Hello, World!" > /var/www/html/index.html
