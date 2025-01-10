mkdir -p $HOME/.local
curl -L https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz | gzip -dc | tar -C $HOME/.local -xf -
mv $HOME/.local/nvim-linux64 $HOME/.local/nvim

