#!/usr/bin/env bash

rm -f ~/.bash_profile ~/.bashrc ~/.gitignore ~/.gitconfig ~/.gvimrc ~/.vimrc ~/.vim ~/.toprc ~/.screenrc ~/.rdebugrc ~/.ackrc ~/.rdebugrc ~/.ctags ~/.pryrc ~/.gemrc

ln -vs ~/dotfiles/bash/bash_profile ~/.bash_profile
ln -vs ~/dotfiles/bash/bashrc ~/.bashrc
ln -vs ~/dotfiles/git/gitignore ~/.gitignore
ln -vs ~/dotfiles/git/gitconfig ~/.gitconfig
ln -vs ~/dotfiles/vim/gvimrc ~/.gvimrc
ln -vs ~/dotfiles/vim/vimrc ~/.vimrc
ln -vs ~/dotfiles/vim/ ~/.vim
ln -vs ~/dotfiles/screenrc ~/.screenrc
ln -vs ~/dotfiles/toprc ~/.toprc
ln -vs ~/dotfiles/ackrc ~/.ackrc
ln -vs ~/dotfiles/rdebugrc ~/.rdebugrc
ln -vs ~/dotfiles/ctags ~/.ctags
ln -vs ~/dotfiles/pryrc ~/.pryrc
ln -vs ~/dotfiles/gemrc ~/.gemrc

mkdir -p ~/.config
ln -fvs ~/dotfiles/fish ~/.config

git config --global core.excludesfile ~/.gitignore
