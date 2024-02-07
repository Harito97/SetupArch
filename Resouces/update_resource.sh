# ---------------------------------------------------------
# Run this command in /mnt/DataK/Project/SetupArch/Resouces
# IMPORTANCE: NOT RUN THIS COMMAND IN ANY OTHER LOCATION ON ARCH
# --------------------------------------------------------------

cd /mnt/DataK/Project/SetupArch/Resouces
# cd correct place 

# ---------------------------
# Don't change the code above
# ---------------------------

### User custom setup
sudo cp ~/.zshrc ./home/harito/
# update ~/.zshrc - the setup for my favourite shell
# sudo cp ~/.profile ./home/harito/
# command will run auto when login

### Hyprland config
sudo cp ~/.config/hypr/hyprland.conf ./home/harito/.config/hypr/hyprland.conf
sudo cp ~/.config/hypr/animations.conf ./home/harito/.config/hypr/animations.conf
sudo cp ~/.config/hypr/keybindings.conf ./home/harito/.config/hypr/keybindings.conf
# set shortcut for Bamboo: mainMod + return, BambooUs: mainMod + space
sudo cp ~/.config/hypr/windowrules.conf ./home/harito/.config/hypr/windowrules.conf

### Neofetch config 
sudo cp -r ~/.config/neofetch ./home/harito/.config

### User system service 
sudo cp -r ~/.config/systemd ./home/harito/.config
# Eg: defautl.service have ibus@.service, ...

### Keyboard enviroment setup
sudo cp /etc/environment ./etc/environment
# set keyboard environment when start - importance when setting ibus in Arch 

### Grub setup
sudo cp /etc/default/grub ./etc/default/grub
# update config grub

### Login setup
sudo cp /etc/profile.d/autostart.sh ./etc/profile.d/autostart.sh
# update autostart when login script

### Mount setup
sudo cp /etc/fstab etc/fstab
# update setup auto mount partitions when boot

### Mirror setup
sudo cp /etc/pacman.d/mirrorlist ./etc/pacman.d/mirrorlist
# config mirror to download need package - some package don't have on other repository

### System service setup
sudo cp /etc/systemd/system/zookeeper.service ./etc/systemd/system/zookeeper.service
# service start zookeeper
sudo cp /etc/systemd/system/kafka.service ./etc/systemd/system/kafka.service
# service start kafka

### Guide for program install by taz, zip, ...
sudo cp /mnt/DataK/Program/kafka/kafka_setup.txt ./mnt/DataK/Program/kafka/kafka_setup.txt
sudo cp /mnt/DataK/Program/xampp/xampp_guide.txt ./mnt/DataK/Program/xampp/xampp_guide.txt
sudo cp /mnt/DataK/Program/xampp/xampp_setup.txt ./mnt/DataK/Program/xampp/xampp_setup.txt
# sudo cp /mnt/DataK/Program/black_hole_wallpaper.png ./mnt/DataK/Program/black_hole_wallpaper.png
# sudo cp -rf /mnt/DataK/Program/icon/ ./mnt/DataK/Program/icon/







# ---------------------------
# Don't change the code below
# ---------------------------

### User command setup 
sudo cp -rf ~/bin home/harito
# update folder has my custom command

echo "Update resouces succesfully"
# take infor
