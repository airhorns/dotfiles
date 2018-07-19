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

if test -d "$HOME/.pyenv/bin"
  set -xg PATH $PATH "$HOME/.pyenv/bin"
end

set -xg EDITOR "vim"
set -xg BUNDLE_EDITOR "vim"
set -xg NODE_PATH "/usr/local/lib/node" $NODE_PATH
set -xg GOPATH "$HOME/Code/go" $GOPATH
set -xg IM_ALREADY_PRO_THANKS 1
set -xg IM_ALRDY_PR0_AT_WALRUSES_THX 1
set -xg PAGER "less"
alias vi vim
set fish_greeting ""

set --local AUTOJUMP_PATH $HOME/.autojump/share/autojump/autojump.fish
if test -e $AUTOJUMP_PATH
  source $AUTOJUMP_PATH
end

set --local host_spec $HOME/dotfiles/fish/(hostname -s)_spec.fish
if test -f "$host_spec"
  source $host_spec
end

if test -f "~/.profile"
  bass source ~/.profile
end

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/airhorns/google-cloud-sdk/path.fish.inc' ]; if type source > /dev/null; source '/Users/airhorns/google-cloud-sdk/path.fish.inc'; else; . '/Users/airhorns/google-cloud-sdk/path.fish.inc'; end; end
