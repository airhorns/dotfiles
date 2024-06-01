set -xg EDITOR "code --wait"

set -gx PATH /workspaces/.codespaces/.persistedshare/dotfiles/bin $PATH


which direnv > /dev/null; and direnv hook fish | source