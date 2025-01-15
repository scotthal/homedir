curl -L https://download.jetbrains.com/idea/ideaIC-2024.3.1.1.tar.gz | gzip -dc | tar -C $HOME/.local -xf -
mv $HOME/.local/idea* $HOME/.local/idea

mkdir -p $HOME/.local/share/pixmaps
cp $HOME/.local/idea/bin/idea.svg $HOME/.local/share/pixmaps/idea.svg

mkdir -p $HOME/.local/share/applications
cat <<EOF > $HOME/.local/share/applications/idea.desktop
[Desktop Entry]
Version=1.0
Type=Application
Name=IDEA
Exec=/home/scotthal/.local/idea/bin/idea
Icon=/home/scotthal/.local/share/pixmaps/idea.svg
Categories=Development
EOF

