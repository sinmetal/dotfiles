#!/bin/bash -eu

export HOMEBREW_CASK_OPTS="--appdir=/Applications"

brew update
brew upgrade

brew tap homebrew/cask

brew install java11 # javaが必要なものが多いので最初にインストールする
# brew install python@3.8

brew install wget
brew install tree
brew install ag
brew install jq

brew install git
brew install hg
brew install svn

brew install vim
brew install zsh

brew install ant
brew install groovy
brew install gradle
brew install maven
brew install npm
brew install terraform

brew install docker

brew install phantomjs
brew install nodebrew

brew install mysql

brew install go

brew install pyenv
brew install pipenv

brew install ghostscript
brew install imagemagick

brew install openssl
brew install nkf

brew install colordiff

brew install yarn

brew install gpg

brew install protobuf
brew install direnv

brew install docker
brew link docker
brew install boot2docker

brew install google-chrome
brew install firefox
brew install google-japanese-ime
brew install alfred
brew install dropbox
brew install marsedit
brew install skitch

# 課金があるので、AppStoreから入れる
# brew cask install dash

brew install iterm2
brew install slack
brew install visual-studio-code

brew unlink openssl && brew link openssl
brew unlink git && brew link git
