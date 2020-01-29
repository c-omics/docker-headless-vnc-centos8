#!/usr/bin/env bash
### every exit != 0 fails the script
set -e

echo "Install some common tools for further installation"
yum -y install epel-release 
yum -y update
yum -y install python36
alternatives --set python /usr/bin/python3
yum -y install vim sudo wget which net-tools bzip2 \
    python3-numpy #used for websockify/novnc
yum clean all
