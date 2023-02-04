# archinstall

ls /sys/firmware/efi/efivars

timedatectl status
fdisk -l

mkfs.ext4 /dev/root_partition
mkswap /dev/swap_partition
mkfs.fat -F 32 /dev/efi_system_partition

mount /dev/root_partition /mnt
mount --mkdir /dev/efi_system_partition /mnt/boot
swapon /dev/swap_partition

vim /etc/pacman.d/mirrorlist

pacstrap -K /mnt base linux linux-firmware

genfstab -U /mnt >> /mnt/etc/fstab

arch-chroot /mnt


follow arch install guide

after chroot install:
pacman -S git networkmanager neovim xorg-server xorg lxdm lxde

neovim config for root



git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
 
 git clone https://github.com/mosy/nvim.git
 
 Edit /etc/locale.gen
 
 locale-gen
 
 nvim /etc/hostname
 
 mkinitcpio -P
 
 passwd
