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
set -xg IM_ALREADY_PRO_THANKS 1
set -xg IM_ALRDY_PR0_AT_WALRUSES_THX 1
set -xg PAGER "less"
set -xg LINEMAN_AUTO_START false
alias vi vim
set --local host_spec $HOME/dotfiles/fish/(hostname -s)_spec.fish
set fish_greeting ""

if test -f "$host_spec"
  source $host_spec
end

if test -f "~/.profile"
  bass source ~/.profile
end
