#!/usr/bin/env bash
set -ex
sudo apt-get install -f -y python-software-properties software-properties-common
sudo apt-add-repository ppa:fish-shell/release-2
sudo apt-get update
sudo apt-get install -f -y fish ctags autojump vim-nox
git clone https://github.com/airhorns/hook.git ~/dotfiles/fish/hook
chsh -s /usr/bin/fish

~/dotfiles/bootstrap.sh
