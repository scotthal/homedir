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

