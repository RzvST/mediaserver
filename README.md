File structure on the data drive : 

mount location named data

Tree file data: 

data
	- media
		- filme
		- seriale
	- torrents
		- filme
		- seriale
		- incomplete 



Instalation:

Server Updates:

	sudo sh -c "$(curl -fsSL https://raw.githubusercontent.com/RzvST/mediaserver/main/scripts/serverupdate.sh)"

Docker Setup: 

	sudo sh -c "$(curl -fsSL https://raw.githubusercontent.com/RzvST/mediaserver/main/scripts/dockersetup.sh)"

Portainer Setup:

	sudo sh -c "$(curl -fsSL https://raw.githubusercontent.com/RzvST/mediaserver/main/scripts/portainersetup.sh)"

Portainer configuration file:

 	sudo sh -c "$(curl -fsSL https://raw.githubusercontent.com/RzvST/mediaserver/main/scripts/portainer_stacks.sh)"
						
Accesing containers : 

	Portainer: https://Machine_IP:9443/
                   
