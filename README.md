# INGRESS

[**Interactive Visual Grounding of Referring Expressions for Human Robot Interaction**](http://www.roboticsproceedings.org/rss14/p28.pdf)  
Mohit Shridhar, David Hsu  
RSS 2018

![](data/main_fig_paper.jpg)

Since my code is an **abomination**, I created a docker image (~8.99GB) of my setup. You can treat this is as a black box; input: image & expression, output: bounding boxes and question captions  

If you find the code useful, please cite:

```
@inproceedings{Shridhar-RSS-18, 
    author    = {Mohit Shridhar AND David Hsu}, 
    title     = {Interactive Visual Grounding of Referring Expressions for Human-Robot Interaction}, 
    booktitle = {Proceedings of Robotics: Science and Systems}, 
    year      = {2018}
} 
```

## Requirements

- [Ubuntu 14.04](http://releases.ubuntu.com/14.04/)
- [Docker 18.03.1+](https://docs.docker.com/install/linux/docker-ce/ubuntu/#install-docker-ce)
- [NVIDIA Docker](https://github.com/nvidia/nvidia-docker/wiki/Installation-(version-2.0))
- [ROS Indigo](http://wiki.ros.org/indigo/Installation/Ubuntu)
- [OpenCV 2](https://docs.opencv.org/3.4.1/d2/de6/tutorial_py_setup_in_ubuntu.html) (Optional)

## Installation

#### Docker

Follow the instructions to install NVIDIA docker. You should be able to run this, if everything is installed properly:
```bash
docker run --runtime=nvidia --rm nvidia/cuda nvidia-smi
```

#### Interface

Clone the repo:
```bash
$ cd <ros_workspace>/src
$ git clone --recursive https://github.com/AdaCompNUS/ingress.git
```

Install actionlib messages:
```bash
$ cd <ros_workspace>
$ catkin_make --pkg action_controller
```

## Usage

#### ROS Setup

Start roscore:
```bash
$ roscore
```

#### Network Setup (Optional)

For a server-client setup, edit the `start_ingress.sh` script with your network settings:
```bash
...
MASTER_URI=http://<roscore_ip_addr>:11311
IP=<system_ip_addr>
...
```

#### Launch

Run the script: 
```bash
$ sh start_ingress.sh
```
The first time you run this command, Docker downloads an 8.99GB image (could take a while!)  

Start the INGRESS server inside the container by running the `ingress` command:
```bash
root@pc:/# ingress
```


## Example


## Development

Good luck...



