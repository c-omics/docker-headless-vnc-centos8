#!/usr/bin/env bash
### every exit != 0 fails the script
set -e

echo "Install Xfce4 UI components and disable xfce-polkit"

#yum --enablerepo=epel -y -x gnome-keyring --skip-broken groups install "Xfce" 
#yum -y groups install "Fonts"
#yum erase -y *power* *screensaver*
yum install -y xfce4-session xfce4-panel xfce4-terminal xfwm4 xfdesktop Thunar gnome-keyring
yum clean all
rm /etc/xdg/autostart/xfce-polkit*
/bin/dbus-uuidgen > /etc/machine-id
