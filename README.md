# SetupArch

I set up my Arch Linux with the following principles in mind: Fast, Stable, Customizable, and Beautiful.

## Examples of what these can achieve:

- Automatically mount partitions on boot
- Configure GRUB for optimal boot options
- Disable the display manager for a secure and fast remote terminal login

## Things to Consider:

### Directory Structure
```
|___ InstallArch/
|     |___ Step0_Install.md
|     |___ Step1_Config.md
|
|___ log/
|
|___ Resources/
|
|___ script/
|___ install
```

### Notes
- Follow the guide in the `install` script. Do **not** run `./install` directly.

### Directory Contents
- **InstallArch/**: Contains setup guides and tips.
  - **Step0_Install.md**: Guide for preparing the device for Arch installation.
  - **Step1_Config.md**: Tips and tricks for using Arch Linux.
- **log/**: Contains logs such as package history.
- **Resources/**: Includes configuration files like `/etc/fstab`.
- **script/**: Contains scripts for installing packages using various package managers like `pacman`, `yay`, `snap`, or building from source.

Hope this helps you set up and organize your Arch Linux environment more effectively!