#!/usr/bin/env zsh

echo "Starting Zsh Setup >>>\n"

if sh --version | grep -q "zsh"; then
    echo "/priivate/var/select/sh already linked to zsh. Skipping..."
else
    echo "Enter superuser password to symlink sh to zsh"
    sudo ln -sfv /bin/zsh /private/var/select/sh
fi

