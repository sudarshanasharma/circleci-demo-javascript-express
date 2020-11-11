#!/bin/bash
sudo apt-get update -y
sudo apt-get install unzip -y
sudo apt-get install awscli -y
sudo apt-get install apache2 -y
sudo systemctl start apache2
cd /var/www/html
sudo rm *
sudo aws s3 cp s3://udacity-demo-1/udacity.zip ./
sleep 2
sudo unzip -o udacity.zip
sleep 2
sudo systemctl restart apache2