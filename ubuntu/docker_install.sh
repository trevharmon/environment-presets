#!/bin/bash

echo '### Install Docker ###'
sudo echo
echo '--- Install System Packages ---'
sudo apt update
sudo apt install -y \
    ca-certificates \
    curl \
    gnupg \
    lsb-release \
    ;

echo
echo '--- Add Docker Repository ---'
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
    $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

echo
echo '--- Install Docker Packages ---'
sudo apt update
sudo apt install -y \
    containerd.io \
    docker-ce \
    docker-ce-cli \
    docker-compose \
    ;

echo
echo '--- Start Docker ---'
sudo usermod -a -G docker $USER
sudo systemctl enable docker
sudo systemctl start docker

echo
echo '--- Validate Install ---'
sudo docker run hello-world

echo
echo '--- Clean Up ---'
sudo docker rm $(sudo docker ps -a | grep 'hello-world' | sed 's/ .*//')
sudo docker rmi 'hello-world'
