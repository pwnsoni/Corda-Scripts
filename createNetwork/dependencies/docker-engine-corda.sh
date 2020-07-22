#!/bin/bash

echo -n  "************Installing Prerequisites for setting up Sawtooth Node with Docker****************************"

echo -n "********Installing Docker Engine**********"

echo -n  "**********Uninstalling Old versions********"

sudo apt-get remove docker docker-engine docker.io containerd runc

sudo apt-get update

echo -n  "***********Set up the repository************"
sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common

echo -n "***********Add Docker’s official GPG key************"
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

echo -n "*************Set up the stable repository**************"
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable nightly test"

echo -n "**************Install Docker Engine**************"
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io

echo -n "*************Docker Engine is installed successfully***********"

