#!/bin/bash

# Setup ROS
MASTER_URI=http://localhost:11311
IP=localhost

docker run --runtime=nvidia -it --rm --net host mohito/ingress:latest /bin/bash
export ROS_MASTER_URI=$MASTER_URI
export ROS_IP=$IP

ingress