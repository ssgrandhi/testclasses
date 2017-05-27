#!/bin/bash
 
num=1
echo "Starting Provision: web$num"
#sudo apt-get update
sudo apt-get install -y nginx
echo "Machine: web$num" >> /usr/share/nginx/html/index.html
echo "Provision web$num complete"
