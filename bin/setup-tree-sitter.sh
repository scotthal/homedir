mkdir -p $HOME/tmp
mkdir -p $HOME/.local/bin
curl -L https://github.com/tree-sitter/tree-sitter/releases/latest/download/tree-sitter-cli-linux-x64.zip > $HOME/tmp/tree-sitter-cli.zip
unzip $HOME/tmp/gradle-bin.zip -d $HOME/.local/java
unzip $HOME/tmp/tree-sitter-cli.zip -d $HOME/.local/bin
rm -f $HOME/tmp/tree-sitter-cli.zip

