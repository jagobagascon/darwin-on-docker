#!/bin/bash

set -e
set -u

# install homebrew
#/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# add homebrew to path
#echo >> /home/arch/.bashrc
#echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >> /home/arch/.bashrc
#eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

# Install Homebrew's dependencies if you have sudo access:
#sudo pacman --noconfirm -S base-devel

# install fastlane
#brew install fastlane
#brew install xcodesorg/made/xcodes

# download xcodes
curl -L https://github.com/XcodesOrg/xcodes/releases/download/1.6.0/xcodes.zip -o xcodes.tar.gz
tar -xvf xcodes.tar.gz
sudo mv xcodes/1.6.0/bin/xcodes /usr/local/bin
chmod +x /usr/local/bin/xcodes
rm -r xcodes
rm xcodes.tar.gz

xcodes version 15.3

xcodebuild -version
