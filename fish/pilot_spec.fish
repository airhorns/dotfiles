# Virtualenv
set -xg WORKON_HOME "/Users/airhorns/.virtualenvs"
eval (python -m virtualfish auto_activation)

set --local openssl_prefix "/usr/local/opt/openssl"
set -xg EJSON_KEYDIR "/Users/airhorns/.ejson/keys"
set -xg CFLAGS "-I$openssl_prefix/include"
set -xg LDFLAGS "-L$openssl_prefix/lib"
set -xg EDITOR "code --wait"
set -xg CLOUDSDK_PYTHON ~/.pyenv/versions/2.7.14/bin/python

set -xg GOPATH /Users/airhorns/Code/go
set -xg ANDROID_HOME $HOME/Library/Android/sdk

set -xg PATH /usr/local/opt/go/libexec/bin $HOME/.fastlane/bin $ANDROID_HOME/emulator $ANDROID_HOME/tools $ANDROID_HOME/platform-tools $PATH
