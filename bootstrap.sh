rm ../.bash_profile ../.bashrc ../.gitignore ../.gitconfig ../.gvimrc ../.vimrc ../.vim ../.toprc ../.screenrc ../.rdebugrc ../.ackrc

ln -s ~/dotfiles/bash/bash_profile ../.bash_profile
ln -s ~/dotfiles/bash/bashrc ../.bashrc
ln -s ~/dotfiles/git/gitignore ../.gitignore
ln -s ~/dotfiles/git/gitconfig ../.gitconfig
ln -s ~/dotfiles/vim/gvimrc ../.gvimrc
ln -s ~/dotfiles/vim/vimrc ../.vimrc
ln -s ~/dotfiles/vim/ ../.vim
ln -s ~/dotfiles/screenrc ../.screenrc
ln -s ~/dotfiles/toprc ../.toprc
ln -s ~/dotfiles/.ackrc ../.ackrc
ln -s ~/dotfiles/rdebugrc ../.rdebugrc

git config --global core.excludesfile ~/.gitignore
