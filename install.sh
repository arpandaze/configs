#Install Git
sudo apt install git -y
git config --global user.email "dazehere@yandex.com"
git config --global user.name "Daze"

#Install Gnome Keyring
sudo apt install gnome-keyring -y

#Install Papirus Icon Pack for KDE
wget -qO- https://git.io/papirus-icon-theme-install | DESTDIR="$HOME/.local/share/icons" sh

#Install Python 3.8 and Pip
sudo add-apt-repository ppa:deadsnakes/ppa -y
sudo apt get update -y
sudo apt install python3.8 -y
sudo apt install python3-pip -y

#Install Fuzzy Finder
sudo apt-get install fzf -y

#Install python extension for NVIM
pip install pynvim

#Install Node.js and node extension for NVIM
snap install node
sudo npm install -g neovim

#Install Zsh
sudo apt install zsh -y

#Install Oh-My-Zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

#Install my zsh config file
rm ~/.zshrc -f
cp .zshrc ~/

#Replace zprofile to fix snap package shortcuts
rm /etc/profile/zprofile -f
cp zprofile /etc/profile/zprofile

#Install Zsh Autosuggestion Extension
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

#Install my nvim configs
mkdir -p ~/.config/nvim
curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
rm ~/.config/nvim/init.vim -f
cp nvim/init.vim ~/.config/nvim

#Install my VSCode Configs
cp Code ~/.config

#Install patched mononoki font
./patched_font_install.sh Mononoki

#VIM Plug Install Auto
nvim -c PlugInstall

echo "\n******************************************"
echo "Please restart for changed to take effect!"
echo "******************************************"