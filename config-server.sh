#! /bin/bash 

VERSION="v0.0.1"
#################################
#   Install nginx simple config #
#################################

echo "========================"
echo "Simple Server Config"
echo "Version: ${VERSION}"
echo "========================"

sudo apt update
sudo apt install -y nginx


sudo iptables -A INPUT -p tcp --dport 80 -j ACCEPT
sudo iptables -A INPUT -p tcp --dport 443 -j ACCEPT

sleep 5

sudo snap install --classic certbot
sudo ln -s /snap/bin/certbot /usr/bin/certbot

echo "========================"
echo "Done installing."
echo "========================"
