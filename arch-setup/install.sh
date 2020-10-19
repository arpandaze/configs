sudo pacman -Syu

#Packages Installation Starts Here

#Dependency Package
sudo pacman -S base-devel

#XOrg Setup
sudo pacman -S xorg xorg-server xorg-init

#Login Manager and Greeter Setup
sudo pacman -S lightdm lightdm-webkit2-greeter

#Window Manager Setup
sudo pacman -S xmonad
sudo pacman -S xmobar
sudo pacman -S dmenu
sudo pacman -S nitrogen

#Terminal Emulator
sudo pacman -S alacritty

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

#Web Browser
sudo pacman -S firefox

#NodeJS and NPM
sudo pacman -S nodejs
sudo pacman -S npm

#NVIM Setup and Configs
sudo npm install -g neovim
mkdir -p ~/.config/nvim
curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
rm ~/.config/nvim/init.vim -f
cp nvim/init.vim ~/.config/nvim
