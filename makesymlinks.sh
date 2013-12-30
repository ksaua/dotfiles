#!/bin/bash

# emacs
mkdir -p $HOME/.emacs.d
ln -s $HOME/.dotfiles/emacs/init.el $HOME/.emacs.d/init.el

# git
ln -s $HOME/.dotfiles/git/.gitconfig $HOME/.gitconfig

# lein
mkdir -p $HOME/.lein
ln -s $HOME/.dotfiles/lein/profiles.clj $HOME/.lein/profiles.clj
