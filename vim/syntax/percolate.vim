" Vim syntax file
" Language:     Markdown
" Author:       Ben Williams <benw@plasticboy.com>
" Maintainer:   Hallison Batista <email@hallisonbatista.com>
" URL:          http://plasticboy.com/markdown-vim-mode/
" Version:      1.0.1
" Last Change:  Fri Dec  4 08:36:48 AMT 2009
" Remark:       Uses HTML syntax file
" Remark:       I don't do anything with angle brackets (<>) because that would too easily
"               easily conflict with HTML syntax
" TODO: Handle stuff contained within stuff (e.g. headings within blockquotes)

" Read the HTML syntax to start with
if version < 600
  so <sfile>:p:h/html.vim
else
  syntax include @Coffee syntax/coffee.vim
  unlet b:current_syntax
  syntax include @JavaScript syntax/javascript.vim
  unlet b:current_syntax
  runtime! syntax/html.vim
  unlet b:current_syntax
  syntax include @Html syntax/html.vim
  unlet b:current_syntax
endif

if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif


" Don't use standard HiLink, it will not work with included syntax files
if version < 508
  command! -nargs=+ HtmlHiLink hi link <args>
else
  command! -nargs=+ HtmlHiLink hi def link <args>
endif

syntax spell toplevel
syntax case ignore
syntax sync linebreaks=1

" Additions to HTML groups
syntax region htmlBold    start=/\\\@<!\(^\|\A\)\@=\*\@<!\*\*\*\@!\S/  end=/\S\\\@<!\*\@<!\*\*\*\@!\($\|\A\)\@=/  contains=htmlItalic,@Spell

syntax region htmlItalic  start=/\\\@<!\(^\|\A\)\@=\*\@<!\*\*\@!\S/    end=/\S\\\@<!\*\@<!\*\*\@!\($\|\A\)\@=/    contains=htmlBold,@Spell
syntax region htmlItalic  start=/\\\@<!\(^\|\A\)\@=\<_\@<!___\@!\S/      end=/\S\\\@<!_\@<!___\@!\($\|\A\)\@=/       contains=htmlBold,@Spell
syntax region htmlItalic  start=/\\\@<!\(^\|\A\)\@=\<_\@<!__\@!\S/       end=/\S\\\@<!_\@<!__\@!\($\|\A\)\@=/       contains=htmlBold,@Spell

" [link](URL) | [link][id] | [link][]
syntax region mkdLink matchgroup=mkdDelimiter start="\!\?\["  end="\]\ze\s*[[(]" contains=@Spell nextgroup=mkdURL,mkdID skipwhite
syntax region mkdID   matchgroup=mkdDelimiter start="\["      end="\]" contained
syntax region mkdURL  matchgroup=mkdDelimiter start="("       end=")"  contained

" Link definitions: [id]: URL (Optional Title)
" TODO handle automatic links without colliding with htmlTag (<URL>)
syntax region mkdLinkDef matchgroup=mkdDelimiter   start="^ \{,3}\zs\[" end="]:" oneline nextgroup=mkdLinkDefTarget skipwhite
syntax region mkdLinkDefTarget start="<\?\zs\S" excludenl end="\ze[>[:space:]\n]"   contained nextgroup=mkdLinkTitle,mkdLinkDef skipwhite skipnl oneline
syntax region mkdLinkTitle matchgroup=mkdDelimiter start=+"+     end=+"+  contained
syntax region mkdLinkTitle matchgroup=mkdDelimiter start=+'+     end=+'+  contained
syntax region mkdLinkTitle matchgroup=mkdDelimiter start=+(+     end=+)+  contained

" Define Markdown groups
syntax match  mkdLineContinue ".$" contained
syntax match  mkdRule      /^\s*\*\s\{0,1}\*\s\{0,1}\*$/
syntax match  mkdRule      /^\s*-\s\{0,1}-\s\{0,1}-$/
syntax match  mkdRule      /^\s*_\s\{0,1}_\s\{0,1}_$/
syntax match  mkdRule      /^\s*-\{3,}$/
syntax match  mkdRule      /^\s*\*\{3,5}$/
syntax match  mkdListItem  /^\s*[-*+]\s\+.*\n\(\(^.\+\n\)*\n\?\)\(\(^\(\s\{4}\|\t\)\+.*\n\)\(^.\+\n\)*\n\?\)*/ contains=mkdListCode,mkdCode,htmlBold,htmlItalic,htmlSpecialChar
syntax match  mkdListItem  /^\s*\d\+\.\s\+.*\n\(\(^.\+\n\)*\n\?\)\(\(^\(\s\{4}\|\t\)\+.*\n\)\(^.\+\n\)*\n\?\)*/ contains=mkdListCode,mkdCode,htmlBold,htmlItalic,htmlSpecialChar
"
syntax match  mkdBlockCode  /^\s*\n\(^\(\s\{4}\|\t\).*\n\)\+/
syntax match  mkdListCode   /^\s*\n\(^\(\s\{8}\|\t{2}\).*\n\)\+/
syntax match  mkdLineBreak /  \+$/
syntax region mkdCode       start=/\\\@<!`/     end=/\\\@<!`/
syntax region mkdCode       start=/\s*``[^`]*/  end=/[^`]*``\s*/
syntax region mkdBlockquote start=/^\s*>/       end=/$/           contains=mkdLineBreak,mkdLineContinue,@Spell
syntax region mkdCode       start="<pre[^>]*>"  end="</pre>"
syntax region mkdCode       start="<code[^>]*>" end="</code>"
syntax region mkdCode       start=/^`\{3,3}\s*\w*\s*$/  end=/^`\{3,3}\s*$/

syntax region htmlCode         matchgroup=mkdCode start=/^`\{3,3}\s*html*\s*$/          end=/^`\{3,3}\s*$/ contains=@html keepend
syntax region coffeeScriptCode matchgroup=mkdCode start=/^`\{3,3}\s*coffeescript*\s*$/  end=/^`\{3,3}\s*$/ contains=@Coffee keepend

syntax region percolateCoffeeCode     matchgroup=mkdDelimiter start=/^!\{3,3}\s*\(coffeescript\)\?\s*$/  end=/^!\{3,3}\s*$/ contains=@Coffee keepend
syntax region percolateJavaScriptCode matchgroup=mkdDelimiter start=/^!\{3,3}\s*javascript*\s*$/         end=/^!\{3,3}\s*$/ contains=@JavaScript keepend

" HTML headings
syntax region htmlH1       start="^\s*\(#\|-\|=\)"           end="\($\|\(#\|-\|=\)\+\)" contains=@Spell
syntax region htmlH2       start="^\s*\(#\|-\|=\)\{2,2}"     end="\($\|\(#\|-\|=\)\+\)" contains=@Spell
syntax region htmlH3       start="^\s*\(#\|-\|=\)\{3,3}"     end="\($\|\(#\|-\|=\)\+\)" contains=@Spell
syntax region htmlH4       start="^\s*\(#\|-\|=\)\{4,4}"     end="\($\|\(#\|-\|=\)\+\)" contains=@Spell
syntax region htmlH5       start="^\s*\(#\|-\|=\)\{5,5}"     end="\($\|\(#\|-\|=\)\+\)" contains=@Spell
syntax region htmlH6       start="^\s*\(#\|-\|=\)\{6,6}"     end="\($\|\(#\|-\|=\)\+\)" contains=@Spell

"highlighting for Markdown groups
HtmlHiLink mkdString        Comment
HtmlHiLink mkdCode          String
HtmlHiLink mkdListCode      String
HtmlHiLink mkdBlockCode     String
HtmlHiLink mkdBlockquote    Comment
HtmlHiLink mkdLineContinue  Comment
HtmlHiLink mkdRule          Identifier
HtmlHiLink mkdListItem      Identifier
HtmlHiLink mkdLineBreak     Todo
HtmlHiLink mkdLink          htmlLink
HtmlHiLink mkdURL           htmlString
HtmlHiLink mkdID            Identifier
HtmlHiLink mkdLinkDef       mkdID
HtmlHiLink mkdLinkDefTarget mkdURL
HtmlHiLink mkdLinkTitle     htmlString

HtmlHiLink mkdDelimiter     Delimiter

let b:current_syntax = "percolate"

delcommand HtmlHiLink
" vim: tabstop=2
