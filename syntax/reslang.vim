syn region String start='"' end='"'

syn region Comment start="/[*]" end="[*]/"
syn match Comment "//.*$"

" TODO this is just +/- integers... sufficient?
syn match Number "\d\+"
syn match Number "[-+]\d\+"

" TODO what do we call this category of shit?
" TODO are `produces` and  `consumes` in this category?
syn keyword Type bulk enum future produces consumes event sync async action
" TODO make sure it respects word boundaries with these..
" answer: it does respect word boundaries, but recall `-` and other symbols
" are not word chars, so `resource` will be highlighted in `-resource-`
syn keyword Type subresource resource
syn keyword Type structure union namespace
syn match Type "\<request-resource\>"
syn match Type "\<configuration-resource\>"
syn match Type "\<asset-resource\>"

" TODO make sure reslang only allows /operations on its own line, with nothing
" else, or use word-boundary at the end. but, recall the other symbols, like
" above
" what do we call this category of shit?
syn match Type "^\s*\/operations\s*$"
syn match Type "^\s*\/header\s*$"
syn match Type "^\s*\/payload\s*$"

syn keyword modifiers linked queryonly query mutable output example optional
syn match modifiers "\<max-length\>"
syn match modifiers "\<min-length\>"
syn match modifiers "\<optional-get\>"
syn match modifiers "\<optional-post\>"
syn match modifiers "\<optional-put\>"

syn keyword actions GET MULTIGET POST PUT DELETE EVENTS

hi def link actions Constant
hi def link modifiers Special

" TODO do we want to only apply some of these highlights to shit within curly
" braces?  https://vim.fandom.com/wiki/Creating_your_own_syntax_files
" transparent shit...
