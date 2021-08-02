#!/bin/bash
sudo apt install stow -y
cp .zshenv $HOME/.zshenv && . $HOME/.zshenv
stow zsh 
stow starship
. $ZDOTDIR/.zshrc
stow nvim
