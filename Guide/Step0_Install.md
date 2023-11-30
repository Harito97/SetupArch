# Install Arch
#### Step 0: Have a boot USB about Arch Linux (should have latest Arch ISO version)
#### Step 1: Already have partition (/boot and /) prepared (use tool)
#### Step 2: Start install
        |___Command: archinstall
        |___Config:
                |___Keyboard, layout and locale     Default
                |___Mirrors                         "vietnam, global"
                |___Create partition, set mount points (most importance) 
                |               |___Use Manual Partition
                |               |___Select partition and mark mount /boot and / - remember mark it be "modifier"
                |               |___Don't mark modifier for partition that you don't want to be format - that should                "existing".
                |                   Maybe boot partition shouldn't be mark "modifier" - i had not try yet
                |
                |___Bootloader                      Grub (default)
                |___swap                            True
                |___hostname                        change it to something you like (Eg: archlinux)
                |___root password                   set a root password
                |___user account                    create an account with id and password to login to arch system (mark it root permission)
                |___Profile (Desktop GUI)           Minimal (I want to setup later)
                |___Audio                           Pirewire
                |___Kernels                         linux (I just want linux)
                |___Additional package              sudo, vim, nano, git
                |___Network configuration           Network Manager (lazy to setup network so chose this)
                |___Timezone                        Ho_Chi_Minh (UTC+7)
                |___Others                          Make default
#### Step 3: Wait then chose not stay live mode USB. reboot 

# Install packages
    sudo pacman -S firefox kitty ntfs-3g            # for browser and terminal shell and package help read ntfs partition (of Windows) 
    sudo pacman -S python jdk-openjdk               # for latest python and java version on arch repository 
    sudo pacman -S gnome                            # base packages for app's gnome and gnome shell environment - most app still just work perfect on this environment 

# Install GUI - Hyperland
    git clone https://github.com/prasanthrangan/hyprdots        # the Hyprland GUI we will use
    cd folder
    ./install.sh        # to auto install. this will install a lot of packages - some of them will not be used - i try searching to setup and install needed package only 
    # some packages and app install is needed: AUR helper like yay and paru, bluetooth, wifi, audio control, rofi, wofi for search, app launcher, ...