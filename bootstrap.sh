#!/bin/bash
echo "installing dependencies"
apt-get install -y apt-transport-https ca-certificates curl software-properties-common python-pip
pip install --upgrade pip setuptools requests

echo "adding docker repository"
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -
add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

echo "installing docker"
apt-get update
apt-get install -y docker-ce

echo "installing docker-compose"
pip install docker-compose
