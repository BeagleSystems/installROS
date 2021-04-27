#!/bin/bash

sudo cp start_mavros.sh /usr/local/sbin/
sudo cp mavros.service /etc/systemd/system/

sudo systemctl enable mavros.service
sudo systemctl start mavros.service

