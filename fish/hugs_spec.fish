# Virtualenv
set -xg WORKON_HOME "/Users/airhorns/.virtualenvs"

set --local openssl_prefix "/usr/local/opt/openssl"
set -xg EJSON_KEYDIR "/Users/airhorns/.ejson/keys"
set -xg CFLAGS "-I$openssl_prefix/include"
set -xg LDFLAGS "-L$openssl_prefix/lib"
set -xg EDITOR "nvim"
set -xg CLOUDSDK_PYTHON /usr/bin/python

set -xg GOPATH /Users/airhorns/Code/go

fish_add_path /opt/homebrew/bin
fish_add_path /usr/local/opt/go/libexec/bin
fish_add_path /usr/local/opt/go/libexec/bin
fish_add_path $HOME/.cargo/bin 
fish_add_path $HOME/.local/bin 
fish_add_path $HOME/.rd/bin 
fish_add_path $HOME/dotfiles/bin

set -xg GPG_TTY (tty)

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/opt/homebrew/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.fish.inc' ]; . '/opt/homebrew/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.fish.inc'; end
if [ -f '/opt/homebrew/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.fish.inc' ]; . '/opt/homebrew/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.fish.inc'; end

set -xg NODE_EXTRA_CA_CERTS "/Users/airhorns/Library/Application Support/mkcert/rootCA.pem"

# pnpm
set -gx PNPM_HOME "/Users/airhorns/Library/pnpm"
set -gx PATH "$PNPM_HOME" $PATH
# pnpm end

which direnv > /dev/null; and direnv hook fish | source

set -q KREW_ROOT; and set -gx PATH $PATH $KREW_ROOT/.krew/bin; or set -gx PATH $PATH $HOME/.krew/bin