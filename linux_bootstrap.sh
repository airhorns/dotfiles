#!/usr/bin/env bash
set -ex
sudo apt-get update
sudo apt-get install -f -y git fish ctags autojump vim-nox curl rbenv terminator chromium docker
chsh -s /usr/bin/fish
fish -c "fisher"
git clone https://github.com/pyenv/pyenv.git ~/.pyenv
~/dotfiles/bootstrap.sh
