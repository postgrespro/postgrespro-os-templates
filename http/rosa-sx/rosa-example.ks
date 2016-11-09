# http://www.techdiving.pro/2015/10/rels-6x.html

#platform=x86, AMD64, or Intel EM64T
#version=DEVEL
# Firewall configuration
firewall --disabled
# Install OS instead of upgrade
install
# Use NFS installation media
nfs --server=10.5.103.10 --dir=NTbootShare
# Root password
rootpw --iscrypted $1$aaBI0VU5$IvjY5x0ZGkMMcxiMt8hOh1
# System authorization information
auth  --useshadow  --passalgo=sha512
# Use graphical install
graphical
# Run the Setup Agent on first boot
firstboot --enable
# System keyboard
keyboard us
# System language
lang en_US
# SELinux configuration
selinux --disabled
# Installation logging level
logging --level=info
# Reboot after installation
reboot
# System timezone
timezone  Europe/Moscow
# Network information
network  --bootproto=dhcp --device=eth0 --onboot=on
# System bootloader configuration
bootloader --location=mbr
# Clear the Master Boot Record
zerombr
# Partition clearing information
clearpart --all 
# Disk partitioning information
part /boot --fstype="ext4" --size=200
part / --fstype="ext4" --size=40960
part /var --fstype="ext4" --size=8192
part swap --fstype="swap" --size=4096

%packages
@base
@compat-libraries
@debugging
@desktop-debugging
@graphical-admin-tools
@hardware-monitoring
@internet-browser
@lxde-desktop
@network-file-system-client
@network-tools
@performance
@perl-runtime
@print-client
@rosa-server-setup
@ruby-runtime
@server-platform
@storage-client-multipath
@system-admin-tools
@wine
@x11
NetworkManager-openswan
genisoimage
mc
mtools
oddjob
sgpio
squashfs-tools
-fskbsetting

%end
