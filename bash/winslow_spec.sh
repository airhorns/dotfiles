export PATH="$HOME/.rbenv/bin:`brew --prefix go`/bin:$PATH"
eval "$(rbenv init -)"
source ~/Code/nvm/nvm.sh
if [ -f `brew --prefix`/etc/autojump ]; then
  . `brew --prefix`/etc/autojump
fi

# Trade Rails perf for memory
export RUBY_HEAP_MIN_SLOTS=1000000
export RUBY_HEAP_SLOTS_INCREMENT=1000000
export RUBY_HEAP_SLOTS_GROWTH_FACTOR=1
export RUBY_GC_MALLOC_LIMIT=1000000000
export RUBY_HEAP_FREE_MIN=500000
