syn region String start='"' end='"'

syn region Comment start="/[*]" end="[*]/"
syn match Comment "//.*$"

syn match Number "\<\d\+\>"

syn keyword namespace namespace title version

syn keyword primitiveTypes int long string double boolean date time datetime url uuid

" TODO what do we call this category of shit?
syn keyword Type structure union enum

" TODO what do we call this category of shit?
" TODO resource-level doesn't get highlighted correctly
syn keyword Type bulk future sync async action subresource resource singleton
syn match Type '\<resource-level\>\|
      \\<request-resource\>\|
      \\<configuration-resource\>\|
      \\<asset-resource\>'


" TODO what do we call this category of shit?
syn match Type "^\s*\/operations\s*$"

syn keyword events produces consumes event
syn match events "^\s*\/header\s*$"
syn match events "^\s*\/payload\s*$"

syn keyword modifiers linked queryonly query mutable output example representation
syn match modifiers "\<max-length\>"
syn match modifiers "\<min-length\>"
" TODO try a multi-line string here...
syn match modifiers '\<optional-get\>\|
      \\<optional-post\>\|
      \\<optional-put\>\|
      \\<optional\>'

syn keyword operations GET MULTIGET POST PUT PATCH DELETE EVENTS

hi def link namespaces Type
hi def link primitiveTypes Type
hi def link events Type
hi def link operations Constant
hi def link modifiers Special
