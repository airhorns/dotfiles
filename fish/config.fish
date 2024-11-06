if not status --is-interactive
	exit
end

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

set -xg EDITOR "vim"
set -xg BUNDLE_EDITOR "vim"
set -xg NODE_PATH "/usr/local/lib/node" $NODE_PATH
set -xg GOPATH "$HOME/Code/go" $GOPATH
set -xg PAGER "less"
set -xg VIRTUAL_ENV_DISABLE_PROMPT 1 # let the fish_prompt function display the virtualenv
alias vi vim
alias k kubectl
set fish_greeting ""

set --local fish_dir (dirname (status --current-filename))
set --local host_spec $fish_dir/(hostname -s)_spec.fish
if test -f "$host_spec"
  source $host_spec
end

if test -f "/.dockerenv"
  source $fish_dir/devcontainer_spec.fish
end

if string match -r codespaces (hostname -s)
  source $fish_dir/codespaces_spec.fish
end

if test -f "~/.profile"
  bass source ~/.profile
end

[ -f /opt/homebrew/share/autojump/autojump.fish ]; and source /opt/homebrew/share/autojump/autojump.fish

# pnpm
set -gx PNPM_HOME "/Users/airhorns/Library/pnpm"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end