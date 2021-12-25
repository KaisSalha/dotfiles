#!/usr/bin/env zsh

echo "Starting Node Setup >>>\n"

if exists nvm; then
    echo "NVM already running. Skipping..."
else
    # Load NVM
    echo "Loading NVM"
    [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"
    [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"
fi

if exists node; then
    echo "Node $(node --version) & NPM $(npm --version) already installed. Skipping..."
else
    nvm install node
fi