# Virtualenv
set -xg WORKON_HOME "/Users/airhorns/.virtualenvs"

set --local openssl_prefix /usr/local/opt/openssl
set -xg EJSON_KEYDIR "/Users/airhorns/.ejson/keys"
set -xg CFLAGS "-I$openssl_prefix/include"
set -xg LDFLAGS "-L$openssl_prefix/lib"
set -xg EDITOR nvim
set -xg CLOUDSDK_PYTHON /usr/bin/python

set -xg GOPATH /Users/airhorns/Code/go

fish_add_path /opt/homebrew/bin
fish_add_path /usr/local/opt/go/libexec/bin
fish_add_path /usr/local/opt/go/libexec/bin
fish_add_path $HOME/.cargo/bin
fish_add_path $HOME/.local/bin
fish_add_path $HOME/.rd/bin
fish_add_path $HOME/.bun/bin
fish_add_path $HOME/dotfiles/bin

mise activate fish | source

set -xg GPG_TTY (tty)

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/opt/homebrew/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.fish.inc' ]
    . '/opt/homebrew/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.fish.inc'
end
if [ -f '/opt/homebrew/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.fish.inc' ]
    . '/opt/homebrew/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.fish.inc'
end

set -xg NODE_EXTRA_CA_CERTS "/Users/airhorns/Library/Application Support/mkcert/rootCA.pem"

# pnpm
set -gx PNPM_HOME /Users/airhorns/Library/pnpm
set -gx PATH "$PNPM_HOME" $PATH
# pnpm end

which direnv >/dev/null; and direnv hook fish | source

set -q KREW_ROOT; and set -gx PATH $PATH $KREW_ROOT/.krew/bin; or set -gx PATH $PATH $HOME/.krew/bin

set -Ux PYENV_ROOT $HOME/.pyenv
set -U fish_user_paths $PYENV_ROOT/bin $fish_user_paths

# Load pyenv automatically by appending
# the following to ~/.config/fish/config.fish:
pyenv init - fish | source

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH

# Added by OrbStack: command-line tools and integration
# This won't be added again if you remove it.
source ~/.orbstack/shell/init2.fish 2>/dev/null || :

# Added by `rbenv init` on Wed  8 Oct 2025 16:53:17 EDT
status --is-interactive; and rbenv init - --no-rehash fish | source
