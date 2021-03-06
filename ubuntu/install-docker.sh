#!/usr/bin/env bash
# implemented from https://www.digitalocean.com/community/tutorials/how-to-install-and-use-docker-on-ubuntu-16-04

sudo apt-get update
sudo apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
echo "deb https://apt.dockerproject.org/repo ubuntu-xenial main" | sudo tee /etc/apt/sources.list.d/docker.list
sudo apt-get update
apt-cache policy docker-engine
sudo apt-get install -y docker-engine
sudo usermod -aG docker $(whoami)
echo ">> Completed. If you receive an error, reboot and try again."
docker run hello-world
