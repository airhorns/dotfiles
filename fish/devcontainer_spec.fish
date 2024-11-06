set -xg EDITOR "cursor --wait"

fish_add_path $HOME/dotfiles/bin
set -gx PNPM_HOME "$HOME/.pnpm"

if test -d "/usr/local/go/bin"
  set -xg PATH "/usr/local/go/bin" $PATH
end


which direnv > /dev/null; and direnv hook fish | source