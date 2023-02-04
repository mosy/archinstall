# archinstall

follow arch install guide

after chroot install git networkmanager neovim 

pacman -S git networkmanager neovim xorg-server xorg lxdm lxde
neovim config

install nvim for root

git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
 
 git clone https://github.com/mosy/nvim.git
 
 Edit /etc/locale.gen
 
 locale-gen
 
 nvim /etc/hostname
 
 mkinitcpio -P
 
 passwd
