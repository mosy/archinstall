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
ln -sf /usr/share/zoneinfo/Europe/Oslo /etc/localtime
hwclock --systohc
nvim /etc/locale.gen
locale-gen

vim /etc/locale.conf
LANG=en_US.UTF-8
pacman -S git base-develn networkmanager neovim xorg-server xorg lxdm lxde intel-ucode sudo grub efibootmgr openssh cups cups-pdf texlive-most openscad xcircuit prusa-slicer arduino-cli thunar gvfs thunar-archive-plugin thunar-media-tags-plugin thunar-volman tumbler libgsf file-roller alsa-utils maim tesseract tesseract-land-eng python python-pyserial moserial




/etc/hostname
homelinux

mkinitcpio -P




neovim config for root



git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim

nvim PackerSynk
mkdir /root/.config
cd /root/.config

git clone https://github.com/mosy/nvim.git
 
 Edit /etc/locale.gen
 
 locale-gen
 
 nvim /etc/hostname
 
 mkinitcpio -P
 
passwd
grub-install --target=x86_64-efi --efi-directory=boot --bootloader-id=GRUB
grub-mkconfig -o /boot/grub/grub.cfg
 
 useradd -m -G wheel,sudo,uucp username
 
 EDITOR=nvimsys visudo
 sudo systemctl enable lxdm
 sudo systemctl enable NetworkManager
 sudo systemctl enable sshd
 
 su fred-olav
 mkdir /home/fred-olav/install
 cd /home/fred-olav/install
  
 git clone https://github.com/mosy/dwm.git
 git clone https://github.com/mosy/st.git
 git clone https://git.suckless.org/dmenu

 
 make
 sudo make install
 
git clone https://aur.archlinux.org/google-chrome.git
makepkg -si
 



#quadro 410 bare jobb pc
sudo pacman -S linux-headers
git clone https://aur.archlinux.org/nvidia-470xx-utils.git
makepkg -si




# Printer
git clone https://aur.archlinux.org/brother-dcp-l2530dw.git
makepgk -si




