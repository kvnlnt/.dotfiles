#!/usr/bin/env bash

echo "Running: install.sh"
echo "Cloning: HOME dotfiles..."
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

# Install VS Code files
mkdir -p $HOME/.config/Code/User
ln -sf $DIR/vscode/keybindings.json $HOME/.config/Code/User
ln -sf $DIR/vscode/settings.json $HOME/.config/Code/User

# Install HOME-based bash files
ln -sf $DIR/bash/.bash_aliases $HOME
ln -sf $DIR/bash/.bash_path $HOME
ln -sf $DIR/bash/.bashrc $HOME
ln -sf $DIR/bash/.profile $HOME
ln -sf $DIR/bash/.prompt $HOME

# Install git files
ln -sf $DIR/git/.gitconfig $HOME

source .bash_aliases .bash_path .bashrc .profile .prompt

