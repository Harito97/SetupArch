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
    
