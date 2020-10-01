syn region String start='"' end='"'

syn region Comment start="/[*]" end="[*]/"
syn match Comment "//.*$"

syn match Number "\<\d\+\>"

syn match Keyword "^\s*\/operations\s*$"
syn match Keyword "^\s*\/REST\s*$"
syn match Keyword "^\s*\/events\s*$"

syn keyword namespaces namespace title version

syn keyword serverBlocks servers server environment protocol

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

syn keyword diagrams diagram
syn match diagrams "^\s*\/include\s*$"
syn match diagrams "^\s*\/includeall\s*$"
syn match diagrams "^\s*\/import\s*$"
syn match diagrams "^\s*\/exclude\s*$"
syn match diagrams "^\s*\/fold\s*$"
syn match diagrams "^\s*\/group\s*$"

syn keyword modifiers linked queryonly query mutable output example representation default inline
syn match modifiers "\<value-of\>"
syn match modifiers "\<max-length\>"
syn match modifiers "\<min-length\>"
syn match modifiers '\<optional-get\>\|
      \\<optional-post\>\|
      \\<optional-put\>\|
      \\<optional\>'

syn keyword operations GET MULTIGET POST PUT PATCH DELETE EVENTS MULTIPOST MULTIPUT MULTIPATCH MULTIDELETE

hi def link definitions Keyword
hi def link diagrams Keyword
hi def link events Keyword
hi def link modifiers Special
hi def link namespaces Keyword
hi def link operations Constant
hi def link primitiveTypes Type
hi def link serverBlocks Keyword
hi def link structures Keyword
