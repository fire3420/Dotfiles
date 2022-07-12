rm -rf $HOME/.local/share/nvim/site/pack/packer/start/vim-jukit/autoload
rm -rf $HOME/.local/share/nvim/site/pack/packer/start/vim-jukit/helpers
rm -rf $HOME/.local/share/nvim/site/pack/packer/start/vim-jukit/plugin
ln -sf $PWD/jukit/autoload $HOME/.local/share/nvim/site/pack/packer/start/vim-jukit
ln -sf $PWD/jukit/helpers $HOME/.local/share/nvim/site/pack/packer/start/vim-jukit
ln -sf $PWD/jukit/plugin $HOME/.local/share/nvim/site/pack/packer/start/vim-jukit
