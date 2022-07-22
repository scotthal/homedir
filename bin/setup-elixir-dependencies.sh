export DEBIAN_FRONTEND=noninteractive
apt-get -y update
apt-get -y install \
  libwxgtk3.0-gtk3-dev \
  libwxgtk-webview3.0-gtk3-dev \
  default-jdk \
  unixodbc-dev \
  xsltproc \
  fop \
  libxml2-utils

