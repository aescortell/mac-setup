#!/bin/bash
# Mostrar archivos ocultos
defaults write com.apple.finder AppleShowAllFiles -bool true

# Mostrar ruta en Finder
defaults write com.apple.finder _FXShowPosixPathInTitle -bool true

# Capturas en ~/Screenshots
mkdir -p ~/Screenshots
defaults write com.apple.screencapture location ~/Screenshots
killall Finder
