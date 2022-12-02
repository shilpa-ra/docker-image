#!/bin/bash
sudo apt update
curl -fsSL https://get.docker.com -o get-docker.sh
sh get-docker.sh
sudo usermod -aG docker devops'
'sudo systemctl enable docker.service'
'sudo systemctl start docker'
'sudo docker info'
