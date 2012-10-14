set -xg PATH "$HOME/bin" "$HOME/Code/go/bin" "/usr/local/bin" "/usr/local/sbin" $PATH
set -xg EDITOR "vim"
set -xg BUNDLE_EDITOR "mvim"
set -xg NODE_PATH "/usr/local/lib/node" $NODE_PATH
set -xg GOPATH "$HOME/Code/go" $GOPATH

set -xg PAGER "less"

alias vi vim

set --local host_spec $HOME/dotfiles/bash/(hostname)_spec.sh
set --local host_spec (echo $host_spec | sed s/\.local//)

set fish_greeting ""

if test -f "$host_spec"
  . host_spec
end

set -xg RUBY_HEAP_MIN_SLOTS 800000
set -xg RUBY_HEAP_FREE_MIN 100000
set -xg RUBY_HEAP_SLOTS_INCREMENT 300000
set -xg RUBY_HEAP_SLOTS_GROWTH_FACTOR 1
set -xg RUBY_GC_MALLOC_LIMIT 79000000

. ~/Code/hook/hook.fish
fish_hook_enable autojump brew debugging ln rake rbenv rails git