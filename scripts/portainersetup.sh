#!/bin/bash

# Official Portainer Installation Docs : https://docs.portainer.io/start/install-ce/server/docker/linux#deployment

echo "****************  Docker volume creation ****************"

docker volume create portainer_data

# Download and install the Portainer Server container

echo "****************  Download and install the Portainer Server container ****************"

docker run -d -p 8000:8000 -p 9443:9443 --name portainer --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer-ce:latest

# Check to see whether the Portainer Server container has started by running

echo "****************  Check to see whether the Portainer Server container has started by running ****************"

docker ps