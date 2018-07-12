#!/bin/bash

# Setup ROS
MASTER_URI=http://172.26.186.217:11311
IP=172.26.186.217

docker run --env ROS_MASTER_URI=$MASTER_URI --env ROS_IP=$IP --runtime=nvidia -it --rm --net host mohito/ingress:latest /bin/bash
