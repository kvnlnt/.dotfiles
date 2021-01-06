#!/usr/bin/env bash

echo "Running: install.sh"
echo "Cloning: HOME dotfiles..."
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

# Install HOME-based bash files
ln -s $DIR/bash/.bash_aliases $HOME
ln -s $DIR/bash/.bash_path $HOME
ln -s $DIR/bash/.bashrc $HOME
ln -s $DIR/bash/.exports $HOME
ln -s $DIR/bash/.functions $HOME
ln -s $DIR/bash/.inputrc $HOME
ln -s $DIR/bash/.profile $HOME
ln -s $DIR/bash/.prompt $HOME
ln -s $DIR/bash/.vimrc $HOME

# Install git files
ln -s $DIR/git/.gitconfig $HOME

# Install VS Code files
mkdir -p $HOME/.config/Code/User
ln -s $DIR/vscode/keybindings.json $HOME/.config/Code/User
ln -s $DIR/vscode/settings.json $HOME/.config/Code/User