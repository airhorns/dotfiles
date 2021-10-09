#!/usr/bin/env bash
set -ex

rm -f ~/.bash_profile ~/.bashrc ~/.gitignore ~/.gitconfig ~/.gvimrc ~/.vimrc ~/.vim ~/.toprc ~/.screenrc ~/.rdebugrc ~/.ackrc ~/.rdebugrc ~/.ctags ~/.pryrc ~/.gemrc

if [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
    sudo apt-get update
    sudo apt-get install -f -y git fish ctags autojump vim-nox curl rbenv terminator chromium docker
    chsh -s /usr/bin/fish
    fish -c "fisher"
    git clone https://github.com/pyenv/pyenv.git ~/.pyenv
fi

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

mkdir -p ~/.config/
ln -fvs ~/dotfiles/fish ~/.config

mkdir -p ~/.lein/
ln -fvs ~/dotfiles/leinrc ~/.lein/leinrc

git config --global core.excludesfile ~/.gitignore
mkdir -p ~/.vim_backup

mkdir -p ~/bin
pip install virtualfish

