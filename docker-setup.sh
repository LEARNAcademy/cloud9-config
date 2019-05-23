#!/bin/bash

# docker
sudo apt-get remove docker docker-engine docker.io containerd runc
#curl -fsSL https://get.docker.com -o get-docker.sh
#sudo sh get-docker.sh
sudo usermod -aG docker ubuntu

# docker-compose
sudo curl -L "https://github.com/docker/compose/releases/download/1.24.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

sudo usermod -aG docker $USER
