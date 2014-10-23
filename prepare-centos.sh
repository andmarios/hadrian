#!/usr/bin/env bash

# Install various dependencies, pip and python packages:
sudo yum install -y python-devel git gcc-c++
wget https://bootstrap.pypa.io/get-pip.py
sudo python get-pip.py
sudo python install Fabric argparse cm_api simplejson python-novaclient

# Install hadrian:
