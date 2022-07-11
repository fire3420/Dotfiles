REPO_HTTPS="https://github.com/fire3420/Dotfiles.git"

if [ ! -n "$DOTFILES" ]; then
    DOTFILES=~/.dotfiles
fi

if [ -d "$DOTFILES" ]; then
    rm -rf $DOTFILES
fi

printf "${BLUE}%s${NORMAL}\n" "Cloning dotfiles from ${REPO_HTTPS}"
# env git clone --depth=1 $REPO_HTTPS $DOTFILES
env git clone -b nvim --depth=1 --single-branch $REPO_HTTPS $DOTFILES

rm -rf $HOME/.config/nvim
env git clone https://github.com/NvChad/NvChad $HOME/.config/nvim --depth 1
rm -rf $HOME/.config/nvim/lua/core
ln -sf $DOTFILES/nvim/core $HOME/.config/nvim/lua
ln -sf $DOTFILES/nvim/custom $HOME/.config/nvim/lua
# chmod -R 777 $HOME/.config/nvim

echo 'alias vi=nvim' >> $HOME/.bashrc
