mkdir -p $HOME/tmp
mkdir -p $HOME/.local/bin
cd $HOME/tmp
curl -LO https://github.com/oven-sh/bun/releases/latest/download/bun-linux-x64.zip
unzip bun-linux-x64.zip
install bun-linux-x64/bun $HOME/.local/bin/bun
rm -rf bun-linux-x64.zip bun-linux-x64

