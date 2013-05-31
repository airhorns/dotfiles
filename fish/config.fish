set -xg PATH "$HOME/bin" "/usr/local/bin" $PATH

if test -d "$HOME/Code/go/bin"
  set -xg PATH "$HOME/Code/go/bin" $PATH
end

if test -d "/usr/local/sbin"
  set -xg PATH $PATH "/usr/local/sbin"
end

if test -d "/usr/local/heroku/bin"
  set -xg PATH $PATH "/usr/local/heroku/bin"
end

set -xg EDITOR "vim"
set -xg BUNDLE_EDITOR "mvim"
set -xg NODE_PATH "/usr/local/lib/node" $NODE_PATH
set -xg GOPATH "$HOME/Code/go" $GOPATH
set -xg IM_ALREADY_PRO_THANKS "conceited bastard"
set -xg PAGER "less"

alias vi vim

set --local host_spec $HOME/dotfiles/fish/(hostname)_spec.fish
set --local host_spec (echo $host_spec | sed s/\.local//)

set fish_greeting ""

if test -f "$host_spec"
  . $host_spec
end
