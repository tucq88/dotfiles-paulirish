#!/bin/bash


# to maintain cask ....
#     brew update && brew upgrade brew-cask && brew cleanup && brew cask cleanup`


# Install native apps

brew tap caskroom/cask
# brew install caskroom/cask/brew-cask
# brew tap caskroom/versions

# daily
brew cask install spectacle
brew cask install dropbox
brew cask install gyazo
brew cask install macpass
brew cask install rescuetime
brew cask install alfred
brew cask install toggldesktop

# dev
brew cask install iterm2
brew cask install sublime-text
brew cask install visual-studio-code
brew cask install virtualbox
brew cask install vagrant
brew cask install postman
brew cask install imageoptim

# communication
brew cask install slack
brew cask install skype
brew cask install skype-for-business

# browsers
brew cask install google-chrome
brew cask install firefox
brew cask install coccoc

# less often
brew cask install disk-inventory-x
brew cask install vlc
brew cask install licecap
brew cask install transmission
brew cask install coconutbattery
brew cask install keka
brew cask install qlmarkdown

