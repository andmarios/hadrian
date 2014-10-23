#!/usr/bin/env bash

# Install various dependencies, pip and python packages:
sudo yum install -y python-devel git gcc-c++
wget https://bootstrap.pypa.io/get-pip.py
sudo python get-pip.py
#sudo pip install Fabric argparse cm_api simplejson python-novaclient
sudo pip install fabric==1.8.1 paramiko==1.10 argparse cm_api simplejson python-novaclient

# Install hadrian:
