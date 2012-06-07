set PATH $PATH "$HOME/bin" "/usr/local/bin" "/usr/local/sbin" "./node_modules/.bin" "/usr/local/share/npm/bin"
set EDITOR "vim"
set BUNDLE_EDITOR "vim"
set NODE_PATH "/usr/local/lib/node" $NODE_PATH

set PAGER "less"

set host_spec $HOME/dotfiles/bash/(hostname)_spec.sh
set host_spec (echo $host_spec | sed s/\.local//)

set fish_greeting "Hello."

if test -f "$host_spec"
  . host_spec
end
