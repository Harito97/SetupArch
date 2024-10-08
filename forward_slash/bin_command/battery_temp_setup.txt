# #!/bin/bash

# # Hàm thay đổi cấu hình TLP dựa trên chế độ
# set_tlp_mode() {
#     case $1 in

#         0)
# 	    echo "Setting Saving mode:..."
#             
#             ;;
        
# 	1)
#             echo "Setting Normal mode: ..."
#             sudo tlp ac --balanced
#             sudo tlp bat --balanced
#             ;;
        
# 	2)
#             echo "Setting Performance mode: ..."
#             sudo tlp ac --performance
#             sudo tlp bat --performance
#             ;;
        
#         *)
#             echo "Invalid mode selected. Available modes: saving:0, normal:1, performance:2"
# 	    echo "Eg: battery 0, battery 1, battery 2."
#             ;;

#     esac
#     echo "Setup completed! Restarting tlp setup with tlp start"
#     sudo tlp start  # Áp dụng cài đặt mới
# }

# # Kiểm tra đối số
# if [ -z "$1" ]; then
#     echo "Usage: $0 {saving:0|normal:1|performance:2}"
#     exit 1
# fi

# # Gọi hàm để set mode
# set_tlp_mode "$1"