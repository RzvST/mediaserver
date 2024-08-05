#!/bin/bash

echo "Check and install updates"
    sudo apt update && sudo apt upgrade && sudo apt autoremove && sudo apt autoclean -y
echo "Updates done"