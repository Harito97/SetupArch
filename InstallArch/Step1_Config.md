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

# What is the difference between 'Liên kết cứng' & 'Liên kết mềm'
    Trong hệ điều hành Linux, liên kết cứng (hard links) và liên kết mềm (symbolic links hay soft links) đều là các cách để tạo mối liên    kết giữa các tệp tin hoặc thư mục. Dưới đây là những sự khác biệt cơ bản giữa chúng:

    1. **Đối tượng Liên kết:**
       - **Liên kết cứng:** Nếu tạo một liên kết cứng, hai hoặc nhiều tên tệp sẽ trỏ đến cùng một inode (vùng lưu trữ dữ liệu và thông tin về tệp).
       - **Liên kết mềm:** Liên kết mềm tạo ra một tệp đặc biệt, trong đó nó chỉ chứa đường dẫn tuyệt đối hoặc tương đối đến tệp hoặc thư mục khác.

    2. **Quá trình Xóa:**
       - **Liên kết cứng:** Khi bạn xóa một liên kết cứng, inode của tệp không bị xóa cho đến khi tất cả các liên kết cứng đều đã bị xóa.   Inode chỉ được giải phóng khi không còn liên kết nào trỏ đến nó.
       - **Liên kết mềm:** Khi bạn xóa một liên kết mềm, nó không ảnh hưởng đến tệp hoặc thư mục gốc mà nó trỏ đến.

    3. **Dung lượng Đĩa:**
       - **Liên kết cứng:** Các liên kết cứng không tạo ra sự tăng dung lượng đĩa vì chúng chỉ trỏ đến cùng một inode.
       - **Liên kết mềm:** Liên kết mềm tạo ra một tệp đặc biệt, nó sẽ chiếm một khoảng dung lượng nhỏ trên đĩa để lưu trữ đường dẫn đến tệp hay thư mục gốc.

    4. **Cross-filesystem Links:**
       - **Liên kết cứng:** Chúng không thể tạo liên kết cứng qua các hệ thống tệp tin khác nhau.
       - **Liên kết mềm:** Liên kết mềm có thể trỏ đến các tệp và thư mục ở các hệ thống tệp tin khác nhau.

    5. **Sự Thay Đổi Động:**
       - **Liên kết cứng:** Thay đổi tên của một liên kết cứng sẽ không ảnh hưởng đến dữ liệu của tệp.
       - **Liên kết mềm:** Nếu bạn thay đổi tên của liên kết mềm, nó sẽ không thể tìm thấy tệp hoặc thư mục gốc nếu đường dẫn mới không còn hợp lệ.

    Tóm lại, liên kết cứng liên kết trực tiếp đến inode và không thể trỏ tới các hệ thống tệp tin khác, trong khi liên kết mềm tạo ra một tệp đặc biệt và có thể trỏ tới các đối tượng ở mọi nơi trên hệ thống tệp tin.

# Creating a Simple Systemd User Service
    Quick instructions on how to create a simple systemd user service for a program or script.

    1- Identify the script or program/binary that you will be using

    2- Create a systemd unit file using the example below, give it a name that will make sense to you with a .service extension (like [my_service].service), and save it to $USER/.config/systemd/user

    '''{bash}
    [Unit]
    Description=[Service description]

    [Service]
    Type=simple
    StandardOutput=journal
    ExecStart=[script path]

    [Install]
    WantedBy=default.target
    '''

    For this example we used a service type simple, which allows systemd to take care of the most basic needs for us. The options   used are:

        Description = Description of your service. This will be shown when handling your service with systemctl
        Type = We will be using the simple type, and this could be left out
        StandardOutput = We will be logging it to the system log (you can use journalctl to view it)
        ExectStart = The script or program to be executed
        WantedBy = Service will be run using the default target. You can find what the default.target is with systemctl get-default

    3- Enable your service so it starts automatically

        systemctl --user enable [my_service].service

    4- Start the service

        systemctl --user start [my_service].service

    4- Check that it’s running

        systemctl --user status [my_service].service

# 



