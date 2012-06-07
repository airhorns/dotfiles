set -xg PATH "$HOME/bin" "/usr/local/bin" "/usr/local/sbin" $PATH
set -xg EDITOR "vim"
set -xg BUNDLE_EDITOR "vim"
set -xg NODE_PATH "/usr/local/lib/node" $NODE_PATH

set -xg PAGER "less"

alias vi vim

set host_spec $HOME/dotfiles/bash/(hostname)_spec.sh
set host_spec (echo $host_spec | sed s/\.local//)

set fish_greeting ""

# Add rbenv init stuff
set -xg PATH "$HOME/.rbenv/bin" "$HOME/.rbenv/shims" $PATH
rbenv rehash 2>/dev/null

if test -f "$host_spec"
  . host_spec
end
