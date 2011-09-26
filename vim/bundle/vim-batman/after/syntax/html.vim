syn match batmanBindingArg /\sdata-\(bind\|route\|template\|showif\|hideif\|context\)=/he=e-1 contained containedin=htmlTag nextgroup=batmanBindingVal

syn match batmanAttributeBindingArg /\sdata-\(bind\|event\|addclass\|removeclass\|formfor\)-[^=]\+/ contained containedin=htmlTag nextgroup=batmanBindingVal
syn region batmanAttributeBindingIdentifier matchgroup=batmanAttributeBindingArg start=/\sdata-\(template\|foreach\|formfor\)-/ matchgroup=Ignore end=/=/ contained containedin=htmlTag nextgroup=batmanBindingVal

syn match batmanBindingVal /"[^"]*"/hs=s+1,he=e-1 contained
syn match batmanBindingVal /'[^']*'/hs=s+1,he=e-1 contained

hi def link batmanBindingArg Statement
hi def link batmanAttributeBindingArg Statement
hi def link batmanAttributeBindingIdentifier Special
hi def link batmanBindingVal Identifier