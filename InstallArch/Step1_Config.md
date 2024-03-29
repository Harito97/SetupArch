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

# Install Waydroid - best way to run Android app on Linux 
## Follow these config: https://wiki.archlinux.org/title/Waydroid
    Step 1. Prepare more kernel packages -> for simple i use linux-zen package (don't need to rebuild or recompile the kernel)
    $ sudo pacman -S linux-zen 
    $ sudo pacman -S linux-zen-headers
    <!-- resolving dependencies... -->
    <!-- looking for conflicting packages... -->
    <!-- Package (2)              New Version   Net Change  Download Size -->
    <!-- extra/pahole             1:1.25-4        0.85 MiB       0.29 MiB -->
    <!-- extra/linux-zen-headers  6.7.4.zen1-1  128.41 MiB      25.80 MiB -->

    Step 2. Install and setup
    yay -S waydroid 
    <!-- 
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
    reboot # nhớ trước đó phải chuyển boot sang kernel linux-zen (thường thì update lại grub thì sẽ có entry đổi boot rồi - nếu không thì tùy chỉnh lại grub) thay thế cho kernel cũ mặc định tối giản của Arch Linux 
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
    -->

# Install R kernel for Jupyter to run R code in Jupyther (without Conda)
    install.packages("languageserver") # run file R in vscode 
    # Step 1. Install R. Use the R terminal (do not use R studio) to install R packages: 
    install.packages(c("repr", "IRdisplay", "evaluate", "crayon", "pbdZMQ", "devtools", "uuid", "digest"))
    install.packages("IRkernel")
    # Step 2. Make Kernel available to Jupyter 
    IRkernel::installspec(user = TRUE) # set false to install system-wide 
    # Sau khi làm vậy sẽ code R trên Jupyter Notebook được.
    # Tuy nhiên có thể lint lỗi cảnh báo rất ngớ nên làm như sau:
    "r.lsp.diagnostics": false. Tức search R extension cài trên Vscode, LSP và bỏ diagnostics

    
