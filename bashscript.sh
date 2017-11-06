#!/bin/bash
yum install httpd -y
yum update -y
aws s3 cp --recursive s3://sengarashu /var/www/html/
service httpd start
chkconfig httpd on