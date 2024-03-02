#!/bin/bash
# afterinstall.sh

# Navigate to your application directory
cd /var/www/html/balaProjectSample/

# Install Composer locally (within your application directory)
curl -sS https://getcomposer.org/installer | php
php composer.phar install

# Additional setup steps specific to your application
# ...

# Restart Apache or any other services as needed
service httpd restart

