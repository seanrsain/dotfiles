#!/usr/bin/env bash

# Software I need on every mac system

# Prereqs from Apple
sudo softwareupdate -i -a
xcode-select --install

brew update
brew upgrade

# OS X GUI apps
brew install caskroom/cask/brew-cask
brew cask install aquamacs
brew cask install dropbox
brew cask install firefox
brew cask install google-chrome
brew cask install google-drive
brew cask install google-hangouts
brew cask install virtualbox
brew cask install vlc
brew cask install handbrake

# Basic command line utilities
brew install git
brew install node
brew install wget --with-iri
brew install imagemagick --with-webp
brew install tree
brew install webkit2png
brew install graphviz
brew install gpg2
brew install isync
# Note: make sure the emacs invoked by a simple emacs command is Examcs 24.
brew install mu --with-emacs --HEAD

# Languages and developement libs
brew install scala
brew install sbt
brew install typesafe-activator
brew install scalastyle

# OS X GUI apps
brew install caskroom/cask/brew-cask
brew cask install aquamacs
brew cask install dropbox
brew cask install firefox
brew cask install google-chrome
brew cask install google-drive
brew cask install google-hangouts
brew cask install virtualbox
brew cask install vlc
brew cask install handbrake

# Remove outdated versions from the cellar.
brew cleanup
