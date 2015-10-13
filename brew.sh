#!/bin/bash -eu

export HOMEBREW_CASK_OPTS="--appdir=/Applications"

brew update
brew upgrade

brew install caskroom/cask/brew-cask
brew tap caskroom/versions

# brew update && brew upgrade brew-cask && brew cleanup && brew cask cleanup

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

brew cask install eclipse-ide
brew cask install webstorm

brew install openssl
brew install nkf

brew install docker
brew link docker
brew install boot2docker

brew cask install google-chrome
brew cask install firefox
brew cask install sourcetree
brew cask install google-japanese-ime
brew cask install alfred
brew cask install google-hangouts
brew cask install skype
brew cask install dropbox
brew cask install kobito
brew cask install marsedit
brew cask install skitch
# 課金があるので、AppStoreから入れる
# brew cask install dash
brew cask install sublime-text
brew cask install sophos-anti-virus-home-edition
brew cask install xtrafinder
brew cask install iterm2
brew cask install adobe-reader
brew cask install libreoffice
brew cask install macvim
brew cask install intellij-idea-ce

brew cask install java
brew cask install java6
brew cask install java7

brew cask alfred link 

brew link openssl --force
brew link git --force
