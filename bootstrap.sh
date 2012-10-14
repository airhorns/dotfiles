#!/usr/bin/env bash

rm ../.bash_profile ../.bashrc ../.gitignore ../.gitconfig ../.gvimrc ../.vimrc ../.vim ../.toprc ../.screenrc ../.rdebugrc ../.ackrc ../.rdebugrc ../.ctags ../.pryrc

ln -s ~/dotfiles/bash/bash_profile ../.bash_profile
ln -s ~/dotfiles/bash/bashrc ../.bashrc
ln -s ~/dotfiles/git/gitignore ../.gitignore
ln -s ~/dotfiles/git/gitconfig ../.gitconfig
ln -s ~/dotfiles/vim/gvimrc ../.gvimrc
ln -s ~/dotfiles/vim/vimrc ../.vimrc
ln -s ~/dotfiles/vim/ ../.vim
ln -s ~/dotfiles/screenrc ../.screenrc
ln -s ~/dotfiles/toprc ../.toprc
ln -s ~/dotfiles/ackrc ../.ackrc
ln -s ~/dotfiles/rdebugrc ../.rdebugrc
ln -s ~/dotfiles/ctags ../.ctags
ln -s ~/dotfiles/pryrc ../.pryrc

mkdir -p ~/.config
ln -s ~/dotfiles/fish ~/.config

git config --global core.excludesfile ~/.gitignore
