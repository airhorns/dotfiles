# Virtualenv
set -xg WORKON_HOME "/Users/airhorns/.virtualenvs"

set --local openssl_prefix "/usr/local/opt/openssl"
set -xg CFLAGS "-I$openssl_prefix/include"
set -xg LDFLAGS "-L$openssl_prefix/lib"
set -xg EDITOR "code --wait"

direnv hook fish | source