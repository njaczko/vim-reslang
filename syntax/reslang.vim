syn region String start='"' end='"'

syn region Comment start="/[*]" end="[*]/"
syn match Comment "//.*$"

syn match Number "\<\d\+\>"

syn keyword namespaces namespace title version

syn keyword Type int long string double boolean date time datetime url uuid

" TODO what do we call this category of shit?
syn keyword Type structure union enum

" TODO what do we call this category of shit?
syn keyword Type bulk future sync async action subresource resource singleton
syn match Type "\<request-resource\>"
syn match Type "\<resource-level\>"
syn match Type "\<configuration-resource\>"
syn match Type "\<asset-resource\>"

" TODO make sure reslang only allows /operations on its own line, with nothing
" else, or use word-boundary at the end. but, recall the other symbols, like
" above
" update: it can be preceded by comments and followed by anything on the same
" line
" what do we call this category of shit?
syn match Type "^\s*\/operations\s*$"

syn keyword events produces consumes event
syn match events "^\s*\/header\s*$"
syn match events "^\s*\/payload\s*$"

" TODO not highlighting `optional-get` when `optional` is also a keyword
" TODO also a problem for the resource.* stuff
syn keyword modifiers linked queryonly query mutable output example representation optional
syn match modifiers "\<max-length\>"
syn match modifiers "\<min-length\>"
syn match modifiers "\<optional-get\>"
syn match modifiers "\<optional-post\>"
syn match modifiers "\<optional-put\>"

syn keyword operations GET MULTIGET POST PUT PATCH DELETE EVENTS

hi def link namespaces Type
hi def link events Type
hi def link operations Constant
hi def link modifiers Special
