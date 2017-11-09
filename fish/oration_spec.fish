set -xg RUBY_GC_HEAP_INIT_SLOTS 800000
set -xg RUBY_HEAP_FREE_MIN 100000
set -xg RUBY_HEAP_SLOTS_INCREMENT 300000
set -xg RUBY_HEAP_SLOTS_GROWTH_FACTOR 1
set -xg RUBY_GC_MALLOC_LIMIT 79000000

set -xg PATH $PATH "/Users/hornairs/.local/bin" "/Users/hornairs/.cargo/bin" "/Users/hornairs/bin/depot_tools" "/Users/hornairs/google-cloud-sdk/bin"

# Virtualenv

set -xg WORKON_HOME "/Users/hornairs/.virtualenvs"
# eval (python -m virtualfish auto_activation)

set -x NO_AUTOAUTOLINT 1

set -x OPENNI2_INCLUDE /usr/local/include/ni2
set -x OPENNI2_REDIST /usr/local/lib/ni2
set -x NITE2_INCLUDE /usr/local/NiTE-MacOSX-x64-2.2/Include
set -x NITE2_REDIST64 /usr/local/NiTE-MacOSX-x64-2.2/Redist

if test -f /opt/dev/dev.fish
  source /opt/dev/dev.fish
end
