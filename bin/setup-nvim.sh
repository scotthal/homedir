mkdir -p /opt
curl -L https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz | gzip -dc | tar -C /opt -xf -
mv /opt/nvim-linux64 /opt/nvim

