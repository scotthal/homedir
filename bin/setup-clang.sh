apt-get update
apt-get install -y clang clang-14 clang-format-14 clang-14-doc libc++1-14 libc++-14-dev libc++abi-14-dev
update-alternatives --set cc /usr/bin/clang
update-alternatives --set c++ /usr/bin/clang++
