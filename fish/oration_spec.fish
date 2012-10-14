set -xg RUBY_HEAP_MIN_SLOTS 800000
set -xg RUBY_HEAP_FREE_MIN 100000
set -xg RUBY_HEAP_SLOTS_INCREMENT 300000
set -xg RUBY_HEAP_SLOTS_GROWTH_FACTOR 1
set -xg RUBY_GC_MALLOC_LIMIT 79000000

set -xg PATH $PATH "/usr/local/share/npm/bin"

. ~/Code/hook/hook.fish
fish_hook_enable autojump brew debugging ln rake rbenv rails git
