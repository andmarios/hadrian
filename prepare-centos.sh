#!/usr/bin/env bash

# Install various dependencies, pip and python packages:
sudo yum install -y python-devel git gcc-c++
wget https://bootstrap.pypa.io/get-pip.py
sudo python get-pip.py
#sudo pip install Fabric argparse cm_api simplejson python-novaclient
sudo pip install fabric==1.8.1 paramiko==1.10 argparse cm_api simplejson python-novaclient

# Install hadrian:
sudo su
./hadrian.sh

# Notes
# - You have to run handrian.sh as root. When asked about user and password, leave them blank.
# - You have to leave SELINUX enabled and let handrian to disable it itself (facepalm).
# - At the end you will have to run the cloudera web installer but with different steps than the usual.
# - At one point you will have to connect to your nodes and disable the hadoop-https service handrian enabled.
# - At one point you have to enter your postgres databases login details. See below on how to see database user, database name and database user password.
# See postgres databases/users:
#  # sudo postgres
#  # psql
#  postgres=# \list
# See postgres passwords at conf/handrian.ini
# If you are interested on more about databases, have a look here: <http://www.cloudera.com/content/cloudera/en/documentation/cloudera-manager/v4-latest/Cloudera-Manager-Installation-Guide/cmig_install_xtrnl_pstgrs.html?scroll=cmig_topic_5_6>
