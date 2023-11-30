# Run this command in /mnt/DataK/Project/SetupArch/Resouces
# ---------------------------------------------------------

cd /mnt/DataK/Project/SetupArch/Resouces
# cd correct place 

sudo cp update_resource.sh ~/bin/
# update this command in my bin

# ---------------------------
# Don't change the code above
# ---------------------------

sudo cp ~/.zshrc ./home/harito/
# update ~/.zshrc - the setup for my favourite shell

sudo cp /etc/default/grub etc/default/grub
# update config grub

sudo cp /etc/profile.d/autostart.sh etc/profile.d/autostart.sh
# update autostart when login script

sudo cp /etc/fstab etc/fstab
# update setup auto mount partitions when boot

sudo cp /etc/pacman.d/mirrorlist etc/pacman.d/mirrorlist
# config mirror to download need package - some package don't have on other repository

sudo cp -rf ~/bin home/harito/bin
# update folder has my custom command








