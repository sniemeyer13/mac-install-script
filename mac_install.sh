#!/usr/bin/env bash

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
mkdir ~/workspace
xcode-select --install
brew tap caskroom/versions
brew cask install java8
brew install cloudfoundry/tap/cf-cli
brew install mysql
brew install gradle
brew install flyway
brew install graphviz
brew install rabbitmq
brew install curl


