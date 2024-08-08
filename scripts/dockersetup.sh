#!/bin/bash

#Official Docker Ubuntu Installation Docs : https://docs.docker.com/engine/install/ubuntu/

# Add Docker's official GPG key:

echo "****************  Add Docker's official GPG key ****************"

sudo apt-get install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc


# Add the repository to Apt sources:

echo "****************  Add the repository to Apt sources ****************"

echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update

# Install the Docker packages.

echo "****************  Install the Docker packages ****************"

sudo apt-get install docker-ce && \
sudo apt-get install docker-ce-cli -y && \
sudo apt-get install containerd.io -y && \
sudo apt-get install docker-buildx-plugin -y && \
sudo apt-get install docker-compose-plugin -y

echo "****************  Check if Docker is installed ****************"

sudo docker ps
sudo docker info