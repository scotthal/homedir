mkdir -p $HOME/.local/bin
mkdir -p $HOME/.local/lua-language-server
cd $HOME/.local/lua-language-server
curl -L  https://github.com/LuaLS/lua-language-server/releases/download/3.15.0/lua-language-server-3.15.0-linux-x64.tar.gz | gzip -dc | tar xf -
ln -s $HOME/.local/lua-language-server/bin/lua-language-server $HOME/.local/bin/lua-language-server

