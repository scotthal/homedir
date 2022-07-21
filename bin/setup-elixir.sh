ERLANG_VERSION='25.0.3'
ELIXIR_VERSION='1.13.4'
curl -L https://raw.githubusercontent.com/kerl/kerl/master/kerl > /tmp/kerl
install /tmp/kerl $HOME/bin/kerl
rm -f /tmp/kerl
$HOME/bin/kerl update releases
$HOME/bin/kerl build $ERLANG_VERSION $ERLANG_VERSION
mkdir -p $HOME/lang/erlang
$HOME/bin/kerl install $ERLANG_VERSION ~/lang/erlang/$ERLANG_VERSION
ln -s $HOME/lang/erlang/$ERLANG_VERSION $HOME/lang/erlang/otp
$HOME/bin/kerl cleanup $ERLANG_VERSION
mkdir -p $HOME/lang/elixir
curl -L https://github.com/elixir-lang/elixir/releases/download/v$ELIXIR_VERSION/Precompiled.zip > /tmp/elixir.zip
unzip /tmp/elixir.zip -d $HOME/lang/elixir
rm -f /tmp/elixir.zip
