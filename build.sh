#!/bin/bash

# install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# add homebrew to path
echo >> /home/arch/.bashrc
echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >> /home/arch/.bashrc
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

# Install Homebrew's dependencies if you have sudo access:
pacman -S base-devel

# install fastlane
brew install fastlane
brew install xcodesorg/made/xcodes

fastlane run xcodes version:"15.3"

xcodebuild -version
