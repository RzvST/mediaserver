#!/bin/bash

echo "****************  Check and install updates ****************"
    sudo apt update && \
    sudo apt upgrade -y && \
    sudo apt autoremove -y && \
    sudo apt autoclean -y
echo "**************** Updates done ****************"
