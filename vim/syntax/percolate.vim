let b:current_syntax = ''
unlet b:current_syntax
runtime! syntax/mkd.vim

let b:current_syntax = ''
unlet b:current_syntax
syntax include @Markdown syntax/markdown.vim

let b:current_syntax = ''
unlet b:current_syntax
syntax include @Coffee syntax/coffee.vim
syntax region coffeeScriptCode matchgroup=Snip start="\!\!\!" end="\!\!\!" containedin=@Markdown contains=@Coffee

syn region markdownCoffeeCodeBlock start="    \|\t" end="$" containedin=@Markdown contains=@Coffee

hi link Snip SpecialComment
let b:current_syntax = 'percolate'
