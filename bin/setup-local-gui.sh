export USERNAME=scotthal
curl -L https://storage.googleapis.com/scotthal-devmachine-public/Roboto_Mono.zip > /tmp/Roboto_Mono.zip
su $USERNAME -lc "\
  mkdir .fonts; \
  mkdir roboto-unz; \
  cd roboto-unz; \
  unzip /tmp/Roboto_Mono.zip; \
  cp static/RobotoMono-Regular.ttf ../.fonts; \
  cp static/RobotoMono-Medium.ttf ../.fonts; \
  cp static/RobotoMono-SemiBold.ttf ../.fonts; \
  cp static/RobotoMono-Bold.ttf ../.fonts; \
  cd ..\
  rm -rf roboto-unz \
"

rm -f /tmp/Roboto_Mono.zip

apt-get -y install xfce4-terminal fonts-roboto fonts-croscore fonts-noto flatpak
update-alternatives --set x-terminal-emulator /usr/bin/xfce4-terminal.wrapper

curl -L 'https://download.mozilla.org/?product=firefox-devedition-latest&os=linux64&lang=en-US' | xz -dc | tar -C /opt -xf -

cat <<EOF > /usr/share/applications/firefox.desktop
[Desktop Entry]
Version=1.0
Type=Application
Name=Firefox
Exec=/opt/firefox/firefox
Icon=/opt/firefox/browser/chrome/icons/default/default64.png
Categories=Network
EOF

curl -L https://update.code.visualstudio.com/latest/linux-x64/stable | gzip -dc | tar -C /opt -xf -
mv /opt/VSCode-linux-x64 /opt/code

su $USERNAME -lc "\
  /opt/code/bin/code --install-extension dbaeumer.vscode-eslint; \
  /opt/code/bin/code --install-extension editorconfig.editorconfig; \
  /opt/code/bin/code --install-extension esbenp.prettier-vscode; \
  /opt/code/bin/code --install-extension github.github-vscode-theme; \
  /opt/code/bin/code --install-extension hashicorp.terraform; \
  /opt/code/bin/code --install-extension jakebecker.elixir-ls; \
  /opt/code/bin/code --install-extension ms-azuretools.vscode-docker; \
  /opt/code/bin/code --install-extension ms-kubernetes-tools.vscode-kubernetes-tools; \
  /opt/code/bin/code --install-extension ms-python.python; \
  /opt/code/bin/code --install-extension ms-vscode.cpptools; \
  /opt/code/bin/code --install-extension ms-vscode.powershell; \
  /opt/code/bin/code --install-extension ms-vscode-remote.vscode-remote-extensionpack; \
  /opt/code/bin/code --install-extension pivotal.vscode-boot-dev-pack; \
  /opt/code/bin/code --install-extension rebornix.ruby; \
  /opt/code/bin/code --install-extension rust-lang.rust-analyzer; \
  /opt/code/bin/code --install-extension visualstudioexptteam.vscodeintellicode; \
  /opt/code/bin/code --install-extension vscjava.vscode-java-pack
"

flatpak remote add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

apt-get -y remove exim4-base postfix
apt-get autoremove -y
apt-get clean -y

