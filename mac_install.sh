#!/usr/bin/env bash

mkdir -p ~/workspace ~/Downloads

if [ ! -f /usr/local/bin/brew ]; then
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

brew tap caskroom/versions
brew cask list java8 &>/dev/null || brew cask install java8
brew list cf-cli &>/dev/null || brew install cloudfoundry/tap/cf-cli
brew list mysql &>/dev/null || brew install mysql
brew list gradle &>/dev/null || brew install gradle
brew list flyway &>/dev/null || brew install flyway
brew list graphviz &>/dev/null || brew install graphviz
brew list rabbitmq &>/dev/null || brew install rabbitmq
brew list curl &>/dev/null || brew install curl
