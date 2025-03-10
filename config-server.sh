#! /bin/bash 


#################################
#   Install nginx simple config #
#           v0.0.1              #
#################################
sudo apt update
sudo apt install -y nginx


sudo iptables -A INPUT -p tcp --dport 80 -j ACCEPT
sudo iptables -A INPUT -p tcp --dport 443 -j ACCEPT

sleep 60

sudo snap install --classic certbot
sudo ln -s /snap/bin/certbot /usr/bin/certbot