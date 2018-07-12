#!/bin/bash

# Setup ROS
MASTER_URI=http://localhost:11311
IP=localhost

docker run --env ROS_MASTER_URI=$MASTER_URI --env ROS_IP=$IP --runtime=nvidia -it --rm --net host mohito/ingress:latest /bin/bash
