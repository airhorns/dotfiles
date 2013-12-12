function highlight_clipboard
  pbpaste | highlight --style moria  --font-size 24 --font Inconsolata -O rtf $argv | pbcopy
end
