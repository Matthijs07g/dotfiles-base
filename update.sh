#!/bin/bash

set -e

echo "Restowing dotfiles..."
PACKAGES=(hypr alacritty)
for package in "${PACKAGES[@]}"; do
    stow --restow --target="$HOME" "$package"
done

echo "Done!"
