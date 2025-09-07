#!/bin/bash
# Git
if ! brew list git &>/dev/null; then
    brew install git
fi

# NVM + Node
if [ ! -d "$HOME/.nvm" ]; then
    brew install nvm
    mkdir -p ~/.nvm
    {
      echo ''
      echo '# NVM config'
      echo 'export NVM_DIR="$HOME/.nvm"'
      echo '[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"'
      echo '[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"'
    } >> ~/.zshrc
    source ~/.zshrc
fi
nvm install --lts
nvm alias default 'lts/*'
