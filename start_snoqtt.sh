#!/bin/bash

echo "Starting snoqtt docker images"
sudo docker run -d \
--rm --net=host \
--env-file env-conf.conf \
--name snoqtt-misbah \
-v /etc/snoqtt/pcap:/root/pcap \
snoqtt-misbah:5.9
