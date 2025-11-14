#!/bin/bash
sudo yum install -y nginx
sudo systemctl stop nginx
sudo rm -rf /usr/share/nginx/html/*
