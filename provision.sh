#!/bin/bash -eu
# provision.sh -- Install Apache and a test PHP script

# Install Apache and PHP
sudo rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-6
yum install -y httpd php

# Start the service
service httpd start
chkconfig httpd on

