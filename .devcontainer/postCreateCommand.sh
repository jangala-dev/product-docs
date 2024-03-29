#!/bin/bash

# The script will exit on any error
set -e

sudo apt update -y

sudo apt install -y apt-utils unzip curl wget xz-utils luajit

# Fonts

sudo apt install -y fontconfig
sudo cp fonts/*  /usr/local/share/fonts
fc-cache -f

# Install Node + VitePress bits

curl -sL https://deb.nodesource.com/setup_18.x -o nodesource_setup.sh
sudo bash nodesource_setup.sh
rm nodesource_setup.sh
sudo apt install -y nodejs

npm install

# Check architecture

panarch="amd64"
typstarch="x86_64"

if uname -m | grep -q 'aarch64'; then
  panarch="arm64"
  typstarch="aarch64"
fi

# Install Pandoc

wget https://github.com/jgm/pandoc/releases/download/3.1.11.1/pandoc-3.1.11.1-1-${panarch}.deb
sudo dpkg -i pandoc-3.1.11.1-1-${panarch}.deb
rm pandoc-3.1.11.1-1-${panarch}.deb

# Install Typst

wget https://github.com/typst/typst/releases/download/v0.10.0/typst-${typstarch}-unknown-linux-musl.tar.xz
tar -xvkf typst-${typstarch}-unknown-linux-musl.tar.xz
chmod +x typst-${typstarch}-unknown-linux-musl/typst
sudo mv typst-${typstarch}-unknown-linux-musl/typst /usr/local/bin/
rm -rf typst-${typstarch}-unknown-linux-musl*

exit 0