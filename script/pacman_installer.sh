sudo pacman -S obs-studio                  
# record 
sudo pacman -S vlc                         
# play audio, video
sudo pacman -S gdb                         
# debug and run program eg: C, C++
sudo pacman -S libxcb                       
# package help Qt get xcb library
sudo pacman -S qt5-connectivity
# package help connection for kde connect
sudo pacman -S npm
# install npm setup for nodejs, reactjs
sudo npm -g install create-react-app
# use npm to install create react app
sudo pacman -S p7zip
# tool to extract and read many compact file
sudo pacman -S opencv
# opencv use for c++
sudo pacman -S rapidjson
# json library use for c++
sudo pacman -S ibus
# ibus 
bash -c "$(curl -fsSL https://raw.githubusercontent.com/BambooEngine/ibus-bamboo/master/archlinux/install.sh)"
# download with ibus bamboo
sudo pacman -S libxcrypt-compat
# lib for app only run on 32 bit. Eg: xampp, ...
sudo pacman -S htop
# infor about processes run on system 
sudo pacman -S usbutils
# infor about usb connect on system 
sudo pacman -S pciutils
# infor about pci devices connect on system 
sudo pacman -S dmidecode
# infors about RAM, BIOS and many more ...
sudo pacman -S libreoffice-fresh
# office app for Linux 
sudo pacman -S tk
# set python use tk 

### After this is set up macOS on Linux: more infor in https://github.com/sickcodes/Docker-OSX?tab=readme-ov-file#initial-setup
# sudo pacman -S qemu libvirt dnsmasq virt-manager bridge-utils flex bison iptables-nft edk2-ovmf
# sudo systemctl enable --now libvirtd
# sudo systemctl enable --now virtlogd
# echo 1 | sudo tee /sys/module/kvm/parameters/ignore_msrs
# sudo modprobe kvm
# sudo pacman -S docker
# # docker for linux 
# # --- Here is the way to uninstall ---
# docker ps --all
# sudo docker rm $(docker ps -qa)
# docker ps --all
# sudo systemctl disable --now libvirtd
# sudo systemctl disable --now virtlogd
# echo 0 | sudo tee /sys/module/kvm/parameters/ignore_msrs
# sudo rmmod kvm_intel
# sudo rmmod kvm
# sudo pacman -R qemu-full qemu-desktop qemu-base qemu-emulators-full qemu-system-x86 libvirt-glib virt-install libvirt-python libvirt dnsmasq virt-manager bridge-utils edk2-ovmf docker 
# ( 8/14) removing libvirt                                                                                      [-----------------------------------------------------------------] 100%
# warning: /etc/libvirt/qemu/networks/default.xml saved as /etc/libvirt/qemu/networks/default.xml.pacsave
# warning: /etc/libvirt/nwfilter/qemu-announce-self.xml saved as /etc/libvirt/nwfilter/qemu-announce-self.xml.pacsave
# warning: /etc/libvirt/nwfilter/qemu-announce-self-rarp.xml saved as /etc/libvirt/nwfilter/qemu-announce-self-rarp.xml.pacsave
# warning: /etc/libvirt/nwfilter/no-other-rarp-traffic.xml saved as /etc/libvirt/nwfilter/no-other-rarp-traffic.xml.pacsave
# warning: /etc/libvirt/nwfilter/no-other-l2-traffic.xml saved as /etc/libvirt/nwfilter/no-other-l2-traffic.xml.pacsave
# warning: /etc/libvirt/nwfilter/no-mac-spoofing.xml saved as /etc/libvirt/nwfilter/no-mac-spoofing.xml.pacsave
# warning: /etc/libvirt/nwfilter/no-mac-broadcast.xml saved as /etc/libvirt/nwfilter/no-mac-broadcast.xml.pacsave
# warning: /etc/libvirt/nwfilter/no-ipv6-spoofing.xml saved as /etc/libvirt/nwfilter/no-ipv6-spoofing.xml.pacsave
# warning: /etc/libvirt/nwfilter/no-ipv6-multicast.xml saved as /etc/libvirt/nwfilter/no-ipv6-multicast.xml.pacsave
# warning: /etc/libvirt/nwfilter/no-ip-spoofing.xml saved as /etc/libvirt/nwfilter/no-ip-spoofing.xml.pacsave
# warning: /etc/libvirt/nwfilter/no-ip-multicast.xml saved as /etc/libvirt/nwfilter/no-ip-multicast.xml.pacsave
# warning: /etc/libvirt/nwfilter/no-arp-spoofing.xml saved as /etc/libvirt/nwfilter/no-arp-spoofing.xml.pacsave
# warning: /etc/libvirt/nwfilter/no-arp-mac-spoofing.xml saved as /etc/libvirt/nwfilter/no-arp-mac-spoofing.xml.pacsave
# warning: /etc/libvirt/nwfilter/no-arp-ip-spoofing.xml saved as /etc/libvirt/nwfilter/no-arp-ip-spoofing.xml.pacsave
# warning: /etc/libvirt/nwfilter/clean-traffic.xml saved as /etc/libvirt/nwfilter/clean-traffic.xml.pacsave
# warning: /etc/libvirt/nwfilter/clean-traffic-gateway.xml saved as /etc/libvirt/nwfilter/clean-traffic-gateway.xml.pacsave
# warning: /etc/libvirt/nwfilter/allow-ipv6.xml saved as /etc/libvirt/nwfilter/allow-ipv6.xml.pacsave
# warning: /etc/libvirt/nwfilter/allow-ipv4.xml saved as /etc/libvirt/nwfilter/allow-ipv4.xml.pacsave
# warning: /etc/libvirt/nwfilter/allow-incoming-ipv6.xml saved as /etc/libvirt/nwfilter/allow-incoming-ipv6.xml.pacsave
# warning: /etc/libvirt/nwfilter/allow-incoming-ipv4.xml saved as /etc/libvirt/nwfilter/allow-incoming-ipv4.xml.pacsave
# warning: /etc/libvirt/nwfilter/allow-dhcpv6.xml saved as /etc/libvirt/nwfilter/allow-dhcpv6.xml.pacsave
# warning: /etc/libvirt/nwfilter/allow-dhcpv6-server.xml saved as /etc/libvirt/nwfilter/allow-dhcpv6-server.xml.pacsave
# warning: /etc/libvirt/nwfilter/allow-dhcp.xml saved as /etc/libvirt/nwfilter/allow-dhcp.xml.pacsave
# warning: /etc/libvirt/nwfilter/allow-dhcp-server.xml saved as /etc/libvirt/nwfilter/allow-dhcp-server.xml.pacsave
# warning: /etc/libvirt/nwfilter/allow-arp.xml saved as /etc/libvirt/nwfilter/allow-arp.xml.pacsave
# sudo rm -r /etc/libvirt     
# # don't remove flex bison and iptables-nft as 
# # :: removing bison breaks dependency 'bison' required by base-devel
# # :: removing flex breaks dependency 'flex' required by base-devel
# # :: removing iptables-nft breaks dependency 'iptables' required by iproute2
### Done setup for macOS in Linux

sudo pacman -S pdftk     
# tool utils for pdf file
sudo pacman -S texlive
# latex use local 
sudo pacman -S neofetch
# display common information on terminal shell
sudo pacman -S man-pages-vi
# man page document - also have some dependence eg: man-db, ...

### Here is setup for Waydroid 
sudo pacman -S linux-zen # extend for new kernel 
yay -S waydroid 
# AUR Explicit (1): waydroid-1.4.2-1
# AUR Dependency (3): python-gbinder-1.1.2-1, libgbinder-1.1.36-1, libglibutil-1.0.76-1
# Sync Dependency (2): lxc-1:5.0.3-1, dnsmasq-2.90-1
# Sync Make Dependency (2): python-setuptools-1:69.0.3-1, cython-3.0.8-1
# :: (1/4) Downloaded PKGBUILD: libgbinder
# :: (2/4) Downloaded PKGBUILD: libglibutil
# :: (3/4) Downloaded PKGBUILD: python-gbinder
# :: (4/4) Downloaded PKGBUILD: waydroid
#   4 libglibutil                      (Build Files Exist)
#   3 waydroid                         (Build Files Exist)
#   2 python-gbinder                   (Build Files Exist)
#   1 libgbinder                       (Build Files Exist)
reboot
sudo waydroid init
sudo systemctl start waydroid-container.service
waydroid session start

# Launch GUI:
# $ waydroid show-full-ui
# Launch shell:
# # waydroid shell
# Install an application:
# $ waydroid app install $path_to_apk
# Run an application:
# $ waydroid app launch $package_name # Can be retrieved with `waydroid app list`

### Done setup for Waydroid 
