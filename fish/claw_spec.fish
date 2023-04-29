# Virtualenv
set -xg WORKON_HOME "/Users/airhorns/.virtualenvs"

set --local openssl_prefix "/usr/local/opt/openssl"
set -xg EJSON_KEYDIR "/Users/airhorns/.ejson/keys"
set -xg CFLAGS "-I$openssl_prefix/include"
set -xg LDFLAGS "-L$openssl_prefix/lib"
set -xg EDITOR "nvim"
set -xg CLOUDSDK_PYTHON /usr/bin/python

set -xg GOPATH /Users/airhorns/Code/go

set -xg PATH /usr/local/opt/go/libexec/bin "/usr/local/opt/terraform@0.13/bin" $HOME/.krew/bin $HOME/.cargo/bin $PATH $HOME/.local/bin $HOME/.rd/bin
set -xg GPG_TTY (tty)

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.fish.inc' ]; . '/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.fish.inc'; end
if [ -f '/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.fish.inc' ]; . '/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.fish.inc'; end

set -xg NODE_EXTRA_CA_CERTS "/Users/airhorns/Library/Application Support/mkcert/rootCA.pem"

alias p="pnpm"

set -gx VOLTA_HOME "$HOME/.volta"
set -gx PATH "$VOLTA_HOME/bin" $PATH
# pnpm
set -gx PNPM_HOME "/Users/airhorns/Library/pnpm"
set -gx PATH "$PNPM_HOME" $PATH
# pnpm end

which direnv > /dev/null; and direnv hook fish | source
