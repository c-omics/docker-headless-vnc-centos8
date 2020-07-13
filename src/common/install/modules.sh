#!/bin/bash

# Install module environments

yum install -y environment-modules make
chmod 666 /usr/share/Modules/init/.modulespath
yum group install -y "Development tools"
yum install -y gcc \
	       openmpi \
	       openmpi-devel \
	       mpich \
	       mpich-devel \
	       lmdb-libs
dnf install -y epel-release
dnf config-manager --set-enabled PowerTools
yum install -y \
	       R
	       openssl \
	       openssl-libs \
	       openssl-devel \
	       libglvnd-egl
dnf install -y https://download1.rstudio.org/desktop/centos8/x86_64/rstudio-1.3.959-x86_64.rpm
yum make clean
rm -rf /var/yum/cache

echo "add 'source /etc/profile.d/modules.sh' to .bashrc"
echo 'source /etc/profile.d/modules.sh' >> $HOME/.bashrc
