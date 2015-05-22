set -xg RUBY_GC_HEAP_INIT_SLOTS 800000
set -xg RUBY_HEAP_FREE_MIN 100000
set -xg RUBY_HEAP_SLOTS_INCREMENT 300000
set -xg RUBY_HEAP_SLOTS_GROWTH_FACTOR 1
set -xg RUBY_GC_MALLOC_LIMIT 79000000

set -xg PATH $PATH "/Users/hornairs/bin/depot_tools"

# Virtualenv

set -xg WORKON_HOME "/Users/hornairs/.virtualenvs"
eval (python -m virtualfish auto_activation)

. ~/Code/hook/hook.fish
fish_hook_enable autojump brew debugging ln rake rails git rbenv

set -x NO_AUTOAUTOLINT 1
