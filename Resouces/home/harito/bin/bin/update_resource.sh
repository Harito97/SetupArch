# Run this command in /mnt/DataK/Project/SetupArch/Resouces
# ---------------------------------------------------------

cd /mnt/DataK/Project/SetupArch/Resouces
# cd correct place 

sudo cp update_resource.sh ~/bin/
# update this command in my bin

# ---------------------------
# Don't change the code above
# ---------------------------

### Shell setup
sudo cp ~/.zshrc ./home/harito/
# update ~/.zshrc - the setup for my favourite shell

### Grub setup
sudo cp /etc/default/grub etc/default/grub
# update config grub

### Login setup
sudo cp /etc/profile.d/autostart.sh etc/profile.d/autostart.sh
# update autostart when login script

### Mount setup
sudo cp /etc/fstab etc/fstab
# update setup auto mount partitions when boot

### Mirror setup
sudo cp /etc/pacman.d/mirrorlist etc/pacman.d/mirrorlist
# config mirror to download need package - some package don't have on other repository

### System service setup
sudo cp /etc/systemd/system/zookeeper.service etc/systemd/system/zookeeper.service
# service start zookeeper

sudo cp /etc/systemd/system/kafka.service etc/systemd/system/kafka.service
# service start kafka

### User command setup 
sudo cp -rf ~/bin home/harito/bin
# update folder has my custom command

### Guide for program install by taz, zip, ...
sudo cp /mnt/DataK/Program/kafka/kafka_setup.txt mnt/DataK/Program/kafka/kafka_setup.txt
sudo cp /mnt/DataK/Program/xampp/xampp_guide.txt mnt/DataK/Program/xampp/xampp_guide.txt
sudo cp /mnt/DataK/Program/xampp/xampp_setup.txt mnt/DataK/Program/xampp/xampp_setup.txt
sudo cp /mnt/DataK/Program/black_hole_wallpaper.png mnt/DataK/Program/black_hole_wallpaper.png
sudo cp -rf /mnt/DataK/Program/icon/ mnt/DataK/Program/icon/







