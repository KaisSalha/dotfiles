#!/usr/bin/env zsh

echo "Starting Homebrew Setup >>>\n"

if exists brew; then
    echo "Homebrew already installed. Skipping..."
else
    echo "Installing Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

brew bundle --verbose