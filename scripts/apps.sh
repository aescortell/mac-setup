#!/bin/bash
apps=(
    iterm2
    slack
    microsoft-teams
    google-chrome
    firefox
    1password
    webstorm
    visual-studio-code
    docker
    notion
    mongodb-compass
    dbeaver-community
    logi-options-plus
    postman
)

for app in "${apps[@]}"; do
    if brew list --cask "$app" &>/dev/null; then
        echo "✅ $app ya está instalado"
    else
        echo "⬇️ Instalando $app..."
        brew install --cask "$app"
    fi
done
