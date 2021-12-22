#!/usr/bin/env zsh

echo "Starting Homebrew Setup >>>\n"

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew bundle --verbose

brew services start redis
brew services start elasticsearch-full