#!/usr/bin/env bash

# Software I need on every mac system

brew update
brew upgrade

# Basic command line utilities
brew install git
brew install node
brew install wget --with-iri
brew install imagemagick --with-webp
brew install tree
brew install ispell
brew install webkit2png
brew install graphviz
brew install gpg2
brew install isync
# This is the best emacs for Mac OSX.
# See https://github.com/railwaycat/homebrew-emacsmacport
brew tap railwaycat/emacsmacport
brew install emacs-mac

# Programming languages
brew install scala
brew install sbt
brew install typesafe-activator
brew install scalastyle
brew install ocaml
brew install opam

# Os X GUI apps
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
brew cask install mactex

# Remove outdated versions from the cellar.
brew cleanup

echo install-osx.sh complete.
