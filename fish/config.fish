if status --is-login
  if test -d "$HOME/bin"
    set -xg PATH "$HOME/bin" $PATH
  end

  if test -d "$HOME/Code/go/bin"
    set -xg PATH "$HOME/Code/go/bin" $PATH
  end

  if test -d "/usr/local/sbin"
    set -xg PATH $PATH "/usr/local/sbin"
  end

  if test -d "/usr/local/heroku/bin"
    set -xg PATH $PATH "/usr/local/heroku/bin"
  end
end

set -xg EDITOR "vim"
set -xg BUNDLE_EDITOR "vim"
set -xg NODE_PATH "/usr/local/lib/node" $NODE_PATH
set -xg GOPATH "$HOME/Code/go" $GOPATH
set -xg PAGER "less"
set -xg VIRTUAL_ENV_DISABLE_PROMPT 1 # let the fish_prompt function display the virtualenv
alias vi vim
set fish_greeting ""

set --local host_spec $HOME/dotfiles/fish/(hostname -s)_spec.fish
if test -f "$host_spec"
  source $host_spec
end

if test -f "~/.profile"
  bass source ~/.profile
end

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/airhorns/Downloads/google-cloud-sdk/path.fish.inc' ]; if type source > /dev/null; source '/Users/airhorns/Downloads/google-cloud-sdk/path.fish.inc'; else; . '/Users/airhorns/Downloads/google-cloud-sdk/path.fish.inc'; end; end

if [ -f /usr/local/share/autojump/autojump.fish ]
  source /usr/local/share/autojump/autojump.fish
end