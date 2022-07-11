apt-get -y upgrade && apt-get -y update
apt-get install -y wget git zip python3-pip
apt install -y software-properties-common
add-apt-repository ppa:ubuntu-toolchain-r/test -y
apt -y update
apt -y --fix-broken install
pip3 install --upgrade pynvim

REPO_HTTPS="https://github.com/fire3420/Dotfiles.git"

if [ ! -n "$DOTFILES" ]; then
    DOTFILES=~/.dotfiles
fi

if [ -d "$DOTFILES" ]; then
    rm -rf $DOTFILES
fi

printf "${BLUE}%s${NORMAL}\n" "Cloning dotfiles from ${REPO_HTTPS}"
# env git clone --depth=1 $REPO_HTTPS $DOTFILES
env git clone -b nvim ---depth=1 -single-branch $REPO_HTTPS $DOTFILES

wget https://github.com/neovim/neovim/releases/download/v0.7.2/nvim-linux64.deb -P $DOTFILES
apt install -y $DOTFILES/nvim-linux64.deb

rm -rf $HOME/.config/nvim
env git clone https://github.com/NvChad/NvChad $HOME/.config/nvim --depth 1
rm -rf $HOME/.config/nvim/lua/core
ln -sf $DOTFILES/nvim/* $HOME/.config/nvim/lua
chmod -R 777 $HOME/.config/nvim

echo 'alias vi=nvim' >> $HOME/.bashrc
