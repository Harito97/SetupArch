yay -S drawio-desktop-bin          
# draw graph, plan, ...

yay -S crow-translate              
# translate app

yay -S grub-customizer             
# custom grub eg: remove entry that don't need

yay -S cpp-httplib
# cpp library for http request

yay -S google-chrome
# the brower from google
yay -S mongodb-bin 
# setup mongodb on archlinux
# setup mongodb and active it's service follow this guide: https://www.geeksforgeeks.org/how-to-install-mongodb-on-arch-based-linux-distributionsmanjaro/
# ❯ sudo systemctl start mongodb
# ❯ sudo systemctl status mongodb
# ● mongodb.service - MongoDB Database Server
#      Loaded: loaded (/usr/lib/systemd/system/mongodb.service; disabled; preset: disabled)
#      Active: active (running) since Wed 2024-03-13 09:22:06 +07; 18s ago
#        Docs: https://docs.mongodb.org/manual
#    Main PID: 11038 (mongod)
#      Memory: 176.1M (peak: 267.8M)
#         CPU: 1.542s
#      CGroup: /system.slice/mongodb.service
#              └─11038 /usr/bin/mongod --config /etc/mongodb.conf

# Mar 13 09:22:06 archlinux systemd[1]: Started MongoDB Database Server.
# Mar 13 09:22:06 archlinux mongod[11038]: {"t":{"$date":"2024-03-13T02:22:06.824Z"},"s":"I",  "c":"CONTROL",  "id":7484500, "ctx":"main","msg":"Environment variable MONGODB_CONFIG_OV>
# ❯ systemctl enable mongodb
# Created symlink /etc/systemd/system/multi-user.target.wants/mongodb.service → /usr/lib/systemd/system/mongodb.service.

yay -S wps-office
# setup wps office
# Optional dependencies for wps-office
#     libtiff5: Provide libtiff.so.5 for wpspdf working
#     cups: for printing support
#     libjpeg-turbo: JPEG image codec support [installed]
#     pango: for complex (right-to-left) text support [installed]
#     curl: An URL retrieval utility and library [installed]
#     ttf-wps-fonts: Symbol fonts required by wps-office
#     ttf-ms-fonts: Microsft Fonts recommended for wps-office
#     wps-office-fonts: FZ TTF fonts provided by wps community
#     wps-office-mime: Use mime files provided by Kingsoft
#     wps-office-mui-zh-cn: zh_CN support for WPS Office

yay -S libtiff5 cups ttf-ms-fonts ttf-wps-fonts wps-office-fonts wps-office-mime wps-office-mui-zh-cn
# optional packages eg: font, ... for wps office

yay -S ibus-autostart
# build a entry that auto start ibus service when login

yay -S weather
# weather app

# yay -S wtfutil-bin # deleted
# show dashbar info 

# yay -S tgpt-bin # deleted
# use gpt from the terminal 

yay -S calcure
# calendar app derectly in terminal shell

yay -S tenacity-bin 
# an easy-to-use multi-track audio editor and recorder - ghi am, ..., forked from Audacity

# yay -S scratch3-bin # deleted
# scratch app in desktop to use 

yay -S todotxt 
# todo app in terminal 

# yay -S rstudio-desktop-bin # deleted
# rstudio desktop package 

yay -S pandoc-bin
# pandoc use for jupyter notebook to export ipynb to pdf

# yay -S warp-terminal 
# Ai - in terminal write by Rust

# yay -S gpt4all-git # deleted
# use LLM locally

sudo pacman -Rns tgpt-bin wtfutil-bin scratch3-bin gpt4all-git 
