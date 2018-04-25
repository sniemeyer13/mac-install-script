#!/usr/bin/env bash

mkdir -p ~/workspace ~/Downloads

if [ ! -f /usr/local/bin/brew ]; then
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

brew tap caskroom/versions
brew cask list java8 &>/dev/null || brew cask install java8
brew list git &>/dev/null || brew install git
brew list cf-cli &>/dev/null || brew install cloudfoundry/tap/cf-cli
brew list mysql &>/dev/null || brew install mysql
brew list gradle &>/dev/null || brew install gradle
brew list flyway &>/dev/null || brew install flyway
brew list graphviz &>/dev/null || brew install graphviz
brew list rabbitmq &>/dev/null || brew install rabbitmq
brew list curl &>/dev/null || brew install curl

if [ ! -f /usr/local/bin/idea ]; then
    cd ~/Downloads
    curl -s "https://data.services.jetbrains.com/products/releases?code=IIC&latest=true&type=release" > idea.json
    LATEST_IDEA=`cat idea.json | jq -r '.IIC[0].downloads.mac.link'`
    curl -O ${LATEST_IDEA}
fi