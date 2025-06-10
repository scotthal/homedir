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

apt-get -y install xfce4-terminal libgtk4-layer-shell-dev fonts-roboto fonts-croscore fonts-noto flatpak
update-alternatives --set x-terminal-emulator /usr/bin/xfce4-terminal.wrapper

flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

apt-get -y remove exim4-base postfix
apt-get autoremove -y
apt-get clean -y

