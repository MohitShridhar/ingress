#!/bin/bash

# Setup ROS
MASTER_URI=http://127.0.0.1:11311
IP=127.0.0.1

docker run --env ROS_MASTER_URI=$MASTER_URI --env ROS_IP=$IP --runtime=nvidia -it --rm --net host mohito/ingress:v1.0 /bin/bash
