#!/bin/bash
apps=(
    1password
    autojump
    dbeaver-community
    docker
    firefox
    google-chrome
    iterm2
    libreoffice
    logi-options-plus
    microsoft-teams
    mongodb-compass
    notion
    postman
    slack
    termius
    visual-studio-code
    webstorm   
)

for app in "${apps[@]}"; do
    if brew list --cask "$app" &>/dev/null; then
        echo "✅ $app ya está instalado"
    else
        echo "⬇️ Instalando $app..."
        brew install --cask "$app"
    fi
done
