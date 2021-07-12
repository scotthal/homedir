mkdir -p $HOME/.ghcup/bin
curl -L https://downloads.haskell.org/~ghcup/x86_64-linux-ghcup > /tmp/ghcup
install /tmp/ghcup $HOME/.ghcup/bin/ghcup
rm -f /tmp/ghcup
