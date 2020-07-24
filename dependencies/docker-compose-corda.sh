#!/bin/bash

echo -n "*****Installing Docker Compose**********"

echo -n "*******UnInstalling Docker Compose********"


echo -n  "**********To Download the current stable version of docker compose******"


sudo curl -L "https://github.com/docker/compose/releases/download/1.26.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

echo -n "**********Apply executable permissions to the binary***************"


sudo chmod +x /usr/local/bin/docker-compose



echo -n "******************Test the installation************"

docker-compose --version

echo -n  "*************Manage Docker as a non-root user*******************"

echo -n "*********************Create the docker group****************"
sudo groupadd docker

echo -n  "*************Add your user to the docker group*******************"
sudo usermod -aG docker $USER

