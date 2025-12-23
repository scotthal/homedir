export USERNAME=scotthal
curl -L https://github.com/ryanoasis/nerd-fonts/releases/download/v3.4.0/RobotoMono.zip > /tmp/Roboto_Mono.zip
su $USERNAME -lc "\
  mkdir .fonts; \
  mkdir roboto-unz; \
  cd roboto-unz; \
  unzip /tmp/Roboto_Mono.zip; \
  cp RobotoMonoNerdFont-Regular.ttf ../.fonts; \
  cp RobotoMonoNerdFont-Medium.ttf ../.fonts; \
  cp RobotoMonoNerdFont-SemiBold.ttf ../.fonts; \
  cp RobotoMonoNerdFont-Bold.ttf ../.fonts; \
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

