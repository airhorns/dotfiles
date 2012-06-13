set -xg PATH "$HOME/bin" "/usr/local/bin" "/usr/local/sbin" $PATH
set -xg EDITOR "vim"
set -xg BUNDLE_EDITOR "vim"
set -xg NODE_PATH "/usr/local/lib/node" $NODE_PATH

set -xg PAGER "less"

alias vi vim

set --local host_spec $HOME/dotfiles/bash/(hostname)_spec.sh
set --local host_spec (echo $host_spec | sed s/\.local//)

set fish_greeting ""

if test -f "$host_spec"
  . host_spec
end

. ~/Code/hook/hook.fish
fish_hook_enable autojump brew debugging ln rake rbenv rails git
