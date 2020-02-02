#!/bin/bash

# Install module environments

yum install -y environment-modules make
chmod 666 /usr/share/Modules/init/.modulespath
yum group install -y "Development tools"
yum install -y gcc openmpi openmpi-devel mpich mpich-devel
yum make clean
rm -rf /var/yum/cache

echo "add 'source /etc/profile.d/modules.sh' to .bashrc"
echo 'source /etc/profile.d/modules.sh' >> $HOME/.bashrc
