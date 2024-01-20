# Config git
    # Setup git account
    git config --global user.email "..." 
    git config --global user.name "..." 

# Config virtual python environment
    python -m venv ~/venv/py
    
# How to auto mount a partition when boot
    # get more info in folder Resource: /etc/fstab
    sudo vim /etc/fstab

# How to config grub
    # get more info in folder Resource: /etc/default/grub
    sudo vim /etc/default/grub
    # setup time 1s
    # GRUB_CMDLINE_LINUX_DEFAULT="quiet splash"     # don't display a lot of information
    # GRUB_DISABLE_SUBMENU=y    # remove submenu
    # remove theme, ...
    # GRUB_DISABLE_OS_PROBER=false
    # ...

# How to login with remote terminal only (disable display-manager service)
    sudo systemctl disable display-manager
    Removed "/etc/systemd/system/display-manager.service".

# How to auto start a command or script when login
    # add script to /etc/profile.d
    # Eg: I create a autostart.sh will auto execute after login
    # more info in /etc/default.d/autostart.sh
    cd /etc/profile.d
    sudo touch autostart.sh
    sudo vim autostart.sh
    # define what you want to do
    sudo chmod +x autostart.sh

# How to config with .zshrc or .bashrc
    # change ~/.zshrc or ~/.bashrc

# How to link a file/folder to a file/folder
    ln -s /mnt/DataK/Music ~/Music
    # here ~/Music will link to /mnt/DataK/Music

# Why partitions (ntfs) mounted by Linux can only read
    because Windows update some package and make power mode is fast mode -> that take control permission
    solution is disable fast mode of Windows and should be every update of Windows 

# How to get system info 
    lslbk           # for disk info
    lscpu           # for cpu info
    lsusb           # for usb connect info
    lspci           # for pci devices connect info
    free -m         # for ram memory info
    sudo dmidecode -t memory
    sudo dmidecode -t bios      # for bios info 
    sudo dmidecode -t system    # for system info
    
# How to virtual macOS on Linux but with high performance 
    sudo pacman -S docker              # use docker
    
    sudo systemctl start docker         # start docker service 
    sudo systemctl enable docker
    
    sudo usermod -aG docker harito      # add current user to docker group
    killall Hyprland                    # <=> logout in current my system setup
    
    sudo pacman -S qemu libvirt dnsmasq # add needed package 
    sudo pacman -S virt-manager bridge-utils flex bison iptables-nft edk2-ovmf 

    sudo systemctl enable --now libvirtd    # start libvirt and load kvm module 
    sudo systemctl enable --now virtlogd
    echo 1 | sudo tee /sys/module/kvm/parameters/ignore_msrs
    sudo modprobe kvm

    docker run -it --device /dev/kvm -p 50922:10022 -v /tmp/.X11-unix:/tmp/.X11-unix -e "DISPALY=${DISPLAY:-:0.0}" sickcodes/docker-osx:ventura      # clean install macOS 13 Ventura 
    
# How to config a shorter name for app by command terminal
    ln -s /usr/bin/todo.sh /home/harito/bin/todo       # here is a example how i make a link from user bin command to my harito's bin command 



    
