#!/bin/bash

echo "Building Docker Image for snoqtt"
sudo docker build -t snoqtt-misbah:5.9 \
--build-arg PROTECTED_SUBNET='192.168.56.0/24' \
--build-arg EXTERNAL_SUBNET='!$HOME_NET' \
--build-arg OINKCODE=9769c7431c3fadc5efdf7e28610815c5c47b42c9 \
https://github.com/dimasmamot/snoqtt-alpine.git#master