#!/bin/bash

UNAME="daze"

#Update
sudo pacman -Syu

#GIT
sudo pacman -S git
git config --global user.email "dazehere@yandex.com"
git config --global user.name "Daze"

#Backup LTS Kernel
sudo pacman -s linux-lts

#Dependency Package
sudo pacman -S base-devel

#XOrg Setup
sudo pacman -S xorg xorg-server xorg-init xorg-xmessage

#Login Manager and Greeter Setup
sudo pacman -S lightdm lightdm-webkit2-greeter
sudo systemctl enable lightdm -f

#Window Manager Setup
sudo pacman -S xmonad
sudo pacman -s xmonad-contrib
sudo pacman -S xmobar
sudo pacman -S nitrogen
sudo pacman -S picom
sudo pacman -S trayer
sudo pacman -S nm-applet

#Terminal Emulator
sudo pacman -S alacritty

#Alternative Terminal Emulator
sudo pacman -s xterm

#Text Editor
sudo pacman -S neovim

#Python and Pip
sudo pacman -S python
sudo pacman -S python-pip

#Fuzzy Finder
sudo pacman -S fzf

#Neofetch
sudo pacman -S neofetch

#Zsh shell and related plugins
sudo pacman -S zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

#Packages for sound
sudo pacman -S pavucontrol
sudo pacman -S pulseaudio

#Screenshot tool
sudo pacman -S maim

#Web Browser
sudo pacman -S firefox

#NodeJS and NPM
sudo pacman -S nodejs
sudo pacman -S npm

#NVIM Setup and Configs
sudo npm install -g neovim
pip install neovim
mkdir -p ~/.config/nvim
curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

#Utilities Installation
sudo pacman -S zip
sudo pacman -S cabal-install
sudo pacman -S pacman-contrib
sudo pacman -S pacman-contrib
sudo pacman -S powerline-fonts
sudo pacman -S xclip
sudo pacman -S flatpak
sudo pacman -S ripgrep
sudo pacman -S ffmpeg
sudo pacman -S youtube-dl
sudo pacman -S slock
sudo pacman -S vlc
sudo pacman -S xdotool
sudo pacman -S rhythmbox
sudo pacman -S ttf-opensans
sudo pacman -S rofi
sudo pacman -S the_silver_searcher
sudo pacman -S clang
sudo pacman -S gmrun
sudo pacman -S caps
sudo pacman -S alsa-utils
sudo pacman -S alsa-firmware

#Yay
mkdir /var/tmp/yay-build
cd /var/tmp/yay-build
git clone https://aur.archlinux.org/yay.git
sudo chown -R $UNAME:users yay
cd yay
sudo makepkg -si

#Configs Copy
cp -r .config ~
cp -r .xmonad ~
cp -r backgrounds /usr/share/
cp zsh/.zshrc ~
cp -r fonts /usr/share/
