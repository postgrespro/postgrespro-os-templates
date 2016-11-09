#!/bin/bash -x

sudo apt-get -y remove firmware-linux gcc4.5 kernel-modules-v4l-el-smp libqt4-gui rpm-build cpp4.5 qt4-common kernel-modules-bcmwl-el-smp kernel-modules-alsa-el-smp kernel-modules-tp_smapi-el-smp kernel-modules-drm-radeon-el-smp kernel-modules-ndiswrapper-el-smp kernel-modules-drm-el-smp kernel-modules-drm-nouveau-el-smp libXinerama gear rpm-build-perl memtest86+ avahi-tools firmware-zd1211 firmware-aic94xx-seq firmware-ipw3945 firmware-ipw2100 firmware-rt73usb firmware-prism54 firmware-acx100 firmware-rt61pci firmware-ipw2200 elinks dmraid openntpd wpa_supplicant postfix libICE libxcb libfreetype fontconfig libffi liblcms libjpeg iw avahi-autoipd syslinux libprelude avahi-daemon plymouth smartmontools sash

sudo apt-get -y install apt-repo
sudo apt-repo add 132741
sudo apt-get update
sudo apt-get install cloud-init

sudo fstrim -v /

