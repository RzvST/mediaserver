echo "****************  Download Portainer Stacks File ****************"

wget https://raw.githubusercontent.com/Portainer/portainer/master/docker-compose.yml 

echo "**************** Create and Copy Portainer Configuration ****************"

## /var/lib/docker/volumes/portainer_data/_data/compose/1

cp docker-compose.yml /var/lib/docker/volumes/portainer_data/_data/compose/1