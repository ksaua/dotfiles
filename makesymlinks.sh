#!/bin/bash

# emacs
mkdir -p $HOME/.emacs.d
ln -s $HOME/.dotfiles/emacs/init.el $HOME/.emacs.d/init.el

# git
ln -s $HOME/.dotfiles/git/.gitconfig $HOME/.gitconfig
