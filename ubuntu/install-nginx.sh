#!/usr/bin/env bash

sudo apt-get update
sudo apt-get install nginx
sudo ufw app list
sudo ufw allow 'Nginx HTTP'
systemctl status nginx