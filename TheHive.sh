#!/bin/bash

#For The Hive (Ubuntu)

#set -e (Hər hansı bir əmrin səhv (non-zero exit code) qaytarması halında, skripti dərhal dayandırır)
#set -x (Hər bir əmri icra etməzdən əvvəl onu terminalda göstərir)

#Change MSIP IP address in docker-compose.yml

set -e
set -x

echo "Updating the system..."
apt update
sleep 1
echo "Installing docker-compose"
apt install docker-compose docker.io -y
mkdir -p theHive
cd theHive
echo "Downloading Docker Compose File..."
sleep 1
wget https://raw.githubusercontent.com/ASImVx0/thehive-cortex-misp-docker-compose-lab11update/refs/heads/main/docker-compose.yml
echo "Starting Installation Process..."
sleep 1
docker-compose up -d
