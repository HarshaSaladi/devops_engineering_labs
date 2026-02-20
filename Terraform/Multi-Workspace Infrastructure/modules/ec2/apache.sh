#!/bin/bash

# Update packages
apt-get update -y

# Install Apache
apt-get install -y apache2

# Start Apache
systemctl start apache2
systemctl enable apache2

# Create sample web page
cat <<EOF > /var/www/html/index.html
<h1>Hello from Terraform</h1>
<h2>Running on Ubuntu EC2</h2>
<h3>Deployed by DevOps Team</h3>
EOF