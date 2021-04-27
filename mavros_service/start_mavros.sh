#!/bin/bash

local_ip="$(hostname -I | cut -d ' ' -f 1)"
export ROS_HOSTNAME=$local_ip
export ROS_MASTER_URI=http://$local_ip:11311

source /opt/ros/melodic/setup.bash
roslaunch mavros x4.launch

