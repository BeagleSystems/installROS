#!/bin/bash

# wait for the network
while [ -z $local_ip ]
    do
	local_ip="$(hostname -I | cut -d ' ' -f 1)"
    done
echo $local_ip
export ROS_HOSTNAME=$local_ip
export ROS_MASTER_URI=http://$local_ip:11311

source /opt/ros/melodic/setup.bash
roslaunch mavros x4.launch

