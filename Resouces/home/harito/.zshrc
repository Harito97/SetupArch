# -----------------------------------------
# After this is what i custom for my demand
# -----------------------------------------

# Export PATH to harito's bin
export PATH="$PATH:/home/harito/bin"

# Export locale use for UTF-8
export LC_ALL=en_US.UTF-8

# Export Ibus for ArchLinux with Hyprland
# export GTK_IM_MODULE=ibus
# export XMODIFIERS=@im=ibus
# export QT_IM_MODULE=ibus
# ibus-daemon -rxRd

# Export setup for GUI environment with Hyprland - configed in ~/.config/hypr/hyprland.conf

## Toolkit Backend Variables
# export GDK_BACKEND=x11						# GTK: Use wayland if available, fall back to x11 if not.
# export QT_QPA_PLATFORM="xcb"					# Tell Qt applications to use the Wayland backend, and fall back to x11 if Wayland is unavailable
# export SDL_VIDEODRIVER=wayland				# Run SDL2 applications on Wayland. Remove or set to x11 if games that provide older versions of SDL cause compatibility issues
# export CLUTTER_BACKEND=wayland				# Clutter package already has wayland enabled, this variable will force Clutter applications to try and use the Wayland backend

## XDG Specifications
# export XDG_CURRENT_DESKTOP=Hyprland
# export XDG_SESSION_TYPE=wayland
# export XDG_SESSION_DESKTOP=Hyprland

## Qt Variables
# export QT_AUTO_SCREEN_SCALE_FACTOR=1			# (From the Qt documentation) enables automatic scaling, based on the monitor’s pixel density
# export QT_WAYLAND_DISABLE_WINDOWDECORATION=1		# Disables window decorations on Qt applications
# export QT_QPA_PLATFORMTHEME=qt5ct			# Tells Qt based applications to pick your theme from qt5ct, use with Kvantum.

# ------------------------------------------------
# After this is default setup - can custom if free
# ------------------------------------------------

# Path to your oh-my-zsh installation.
ZSH=/usr/share/oh-my-zsh

# Path to powerlevel10k theme
source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme

# List of plugins used
plugins=(git sudo zsh-256color zsh-autosuggestions zsh-syntax-highlighting)
source $ZSH/oh-my-zsh.sh

# In case a command is not found, try to find the package that has it
function command_not_found_handler {
    local purple='\e[1;35m' bright='\e[0;1m' green='\e[1;32m' reset='\e[0m'
    printf 'zsh: command not found: %s\n' "$1"
    local entries=( ${(f)"$(/usr/bin/pacman -F --machinereadable -- "/usr/bin/$1")"} )
    if (( ${#entries[@]} )) ; then
        printf "${bright}$1${reset} may be found in the following packages:\n"
        local pkg
        for entry in "${entries[@]}" ; do
            local fields=( ${(0)entry} )
            if [[ "$pkg" != "${fields[2]}" ]] ; then
                printf "${purple}%s/${bright}%s ${green}%s${reset}\n" "${fields[1]}" "${fields[2]}" "${fields[3]}"
            fi
            printf '    /%s\n' "${fields[4]}"
            pkg="${fields[2]}"
        done
    fi
    return 127
}

# Detect the AUR wrapper
if pacman -Qi yay &>/dev/null ; then
   aurhelper="yay"
elif pacman -Qi paru &>/dev/null ; then
   aurhelper="paru"
fi

function in {
    local pkg="$1"
    if pacman -Si "$pkg" &>/dev/null ; then
        sudo pacman -S "$pkg"
    else 
        "$aurhelper" -S "$pkg"
    fi
}

# Helpful aliases
alias  l='eza -lh  --icons=auto' # long list
alias ls='eza -1   --icons=auto' # short list
alias ll='eza -lha --icons=auto --sort=name --group-directories-first' # long list all
alias ld='eza -lhD --icons=auto' # long list dirs
alias un='$aurhelper -Rns' # uninstall package
alias up='$aurhelper -Syu' # update system/package/aur
alias pl='$aurhelper -Qs' # list installed package
alias pa='$aurhelper -Ss' # list availabe package
alias pc='$aurhelper -Sc' # remove unused cache
alias po='$aurhelper -Qtdq | $aurhelper -Rns -' # remove unused packages, also try > $aurhelper -Qqd | $aurhelper -Rsu --print -
alias vc='code' # gui code editor

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
