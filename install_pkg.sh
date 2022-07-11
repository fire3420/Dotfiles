apt-get -y upgrade && apt-get -y update
apt-get install -y wget git zip python3-pip
apt install -y software-properties-common
add-apt-repository ppa:ubuntu-toolchain-r/test -y
apt -y update
apt -y --fix-broken install
pip3 install --upgrade pynvim

DOTFILES=~/.dotfiles
wget https://github.com/neovim/neovim/releases/download/v0.7.2/nvim-linux64.deb -P $DOTFILES
apt install -y $DOTFILES/nvim-linux64.deb
