echo "****************  Download Portainer Stacks File ****************"

wget https://raw.githubusercontent.com/RzvST/mediaserver/main/portainer_stacks/mediaserver.yml

echo "**************** Create and Copy Portainer Configuration ****************"

## /var/lib/docker/volumes/portainer_data/_data/compose/1

sudo mkdir /var/lib/docker/volumes/portainer_data/_data/compose/1

sudo cp mediaserver.yml /var/lib/docker/volumes/portainer_data/_data/compose/1/

echo "**************** Restarting Portainer Container ****************"

sudo docker restart portainer

