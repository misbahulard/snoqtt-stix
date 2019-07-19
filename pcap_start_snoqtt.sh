#!/bin/bash

echo "Starting snoqtt-pcap docker images"
sudo docker run -d \
--rm --net=host \
--env-file env-conf.conf \
--name snoqtt-misbah \
-v /etc/snoqtt/pcap:/root/pcap \
-v /etc/snoqtt/super_snort.conf:/root/libs/super_snort.conf \
snoqtt-misbah:5.9