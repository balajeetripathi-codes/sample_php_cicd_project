#!/bin/bash
# beforeinstall.sh

# Update the system packages
yum update -y

# Install necessary dependencies for your PHP application
yum install -y httpd php php-mysql

curl -sS https://getcomposer.org/installer | php
mv composer.phar /usr/local/bin/composer

# Start the Apache web server
service httpd start

# Enable Apache to start on boot
chkconfig httpd on

