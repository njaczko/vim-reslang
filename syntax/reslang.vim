syn region String start='"' end='"'

syn region Comment start="/[*]" end="[*]/"
syn match Comment "//.*$"

syn match Number "\<\d\+\>"

syn match Keyword "^\s*\/operations\s*$"

syn keyword namespace namespace title version

syn keyword primitiveTypes boolean date datetime double duration int long string time url uuid

syn keyword structures structure union enum

syn keyword definitions bulk future sync async action subresource singleton
syn match definitions '\<resource-level\>\|
      \\<request-resource\>\|
      \\<configuration-resource\>\|
      \\<asset-resource\>\|
      \\<resource\>'

syn keyword events produces consumes event
syn match events "^\s*\/header\s*$"
syn match events "^\s*\/payload\s*$"

syn keyword modifiers linked queryonly query mutable output example representation default
syn match modifiers "\<max-length\>"
syn match modifiers "\<min-length\>"
syn match modifiers '\<optional-get\>\|
      \\<optional-post\>\|
      \\<optional-put\>\|
      \\<optional\>'

syn keyword operations GET MULTIGET POST PUT PATCH DELETE EVENTS

hi def link namespaces Keyword
hi def link structures Keyword
hi def link definitions Keyword
hi def link events Keyword
hi def link primitiveTypes Type
hi def link operations Constant
hi def link modifiers Special
