# set -xg PATH $PATH

# Virtualenv
set -xg WORKON_HOME "/Users/airhorns/.virtualenvs"
eval (python -m virtualfish auto_activation)

set --local openssl_prefix "/usr/local/opt/openssl"
set -xg EJSON_KEYDIR "/Users/airhorns/.ejson/keys"
set -xg CFLAGS "-I$openssl_prefix/include"
set -xg LDFLAGS "-L$openssl_prefix/lib"

#source ~/.config/fish/functions/fish_avn.fish
