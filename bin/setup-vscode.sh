export USERNAME=scotthal
curl -L https://update.code.visualstudio.com/latest/linux-x64/stable | gzip -dc | tar -C /opt -xf -
mv /opt/VSCode-linux-x64 /opt/code

su $USERNAME -lc "\
  /opt/code/bin/code --install-extension catppuccin.catppuccin-vsc; \
  /opt/code/bin/code --install-extension dbaeumer.vscode-eslint; \
  /opt/code/bin/code --install-extension editorconfig.editorconfig; \
  /opt/code/bin/code --install-extension esbenp.prettier-vscode; \
  /opt/code/bin/code --install-extension github.github-vscode-theme; \
  /opt/code/bin/code --install-extension jakebecker.elixir-ls; \
  /opt/code/bin/code --install-extension ms-azuretools.vscode-docker; \
  /opt/code/bin/code --install-extension ms-kubernetes-tools.vscode-kubernetes-tools; \
  /opt/code/bin/code --install-extension ms-python.python; \
  /opt/code/bin/code --install-extension ms-vscode.cpptools; \
  /opt/code/bin/code --install-extension ms-vscode.powershell; \
  /opt/code/bin/code --install-extension ms-vscode-remote.vscode-remote-extensionpack; \
  /opt/code/bin/code --install-extension vmware.vscode-boot-dev-pack; \
  /opt/code/bin/code --install-extension rust-lang.rust-analyzer; \
  /opt/code/bin/code --install-extension visualstudioexptteam.vscodeintellicode; \
  /opt/code/bin/code --install-extension vscjava.vscode-java-pack
"

cat <<EOF > /usr/share/applications/firefox.desktop
[Desktop Entry]
Version=1.0
Type=Application
Name=Code
Exec=/opt/code/bin/code
Icon=/opt/code/resources/app/resources/linux/code.png
Categories=Development
EOF
