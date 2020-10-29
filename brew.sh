#!/bin/bash -eu

export HOMEBREW_CASK_OPTS="--appdir=/Applications"

brew update
brew upgrade

brew tap caskroom/cask
brew tap caskroom/versions

brew cask install java8 # javaが必要なものが多いので最初にインストールする
brew install python@3.8

brew install wget
brew install tree
brew install ag

brew install git
brew install hg
brew install svn

brew install vim
brew install zsh

brew install ant
brew install groovy
brew install gradle
brew install maven

brew install docker

brew install phantomjs
brew install nodebrew

brew install mysql

brew install go --cross-compile-all

brew install pyenv
brew install pipenv

brew install ghostscript
brew install imagemagick

brew install openssl
brew install nkf

brew install colordiff

brew install yarn

brew install protobuf

brew install docker
brew link docker
brew install boot2docker

brew cask install google-chrome
brew cask install firefox
brew cask install sourcetree
brew cask install google-japanese-ime
brew cask install alfred
brew cask install google-hangouts
brew cask install dropbox
brew cask install marsedit
brew cask install skitch
# 課金があるので、AppStoreから入れる
# brew cask install dash
brew cask install iterm2
brew cask install macvim
brew cask install atom
brew cask install slack

brew unlink openssl && brew link openssl
brew unlink git && brew link git
