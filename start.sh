#!/bin/bash
# Great writeup here https://deparkes.co.uk/2019/11/16/nifi-version-control-with-nifi-registry/
sudo apt-get update && sudo apt-get upgrade
curl -sSL https://get.docker.com/ | sh
sudo usermod -aG docker ${USER}
sudo apt-get install libffi-dev libssl-dev
sudo apt install python3-dev
sudo apt-get install -y python3 python3-pip
sudo pip3 install docker-compose
sudo systemctl enable docker
git clone https://github.com/malstor/docker-compose-nifi-arm64.git
# options to add more nodes: docker-compose up --scale nifi=3 -d
docker-compose -f docker-compose.yaml up -d
