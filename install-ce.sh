#!/bin/bash

# Step 1: Install Docker
sudo apt update
sudo apt upgrade -y
sudo apt install -y apt-transport-https ca-certificates curl software-properties-common net-tools
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"
sudo apt update
sudo apt install -y docker-ce

# Step 2: Execute Docker command without sudo
sudo usermod -aG docker ${USER}
su - ${USER}

echo "Docker installation and configuration completed."
