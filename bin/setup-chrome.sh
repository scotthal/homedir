curl -L https://dl.google.com/linux/direct/chrome-remote-desktop_current_amd64.deb > /tmp/crd.deb
dpkg -i /tmp/crd.deb
apt-get -y install -f
rm -f /tmp/crd.deb
echo 'dbus-launch startxfce4' > /etc/chrome-remote-desktop-session
curl -L https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb > /tmp/chrome.deb
dpkg -i /tmp/chrome.deb
apt-get -y install -f
rm -f /tmp/chrome.deb
update-alternatives --set x-www-browser /usr/bin/google-chrome-stable

