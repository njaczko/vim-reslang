syntax match Number "\<\d*\([Ee][+-]\?\d\+\)\?\>"
syntax match Number "\<\d\+[.]\d*\([Ee][+-]\?\d\+\)\?\>"
syntax match Number "\<[.]\d\+\([Ee][+-]\?\d\+\)\?\>"

" syn match Constant "std.acos"

" syn match Type "\$"

" TODO do we need the skip part?
syn region String start='L\="' skip='\\\\\|\\"' end='"'
syn region String start='L\=\'' skip='\\\\\|\\\'' end='\''
" TODO are there block multi line strings?
syn region String start='|||\s*\n\+\z(\s*\)' end='^\z1\@!\s*|||'

syn region Comment start="/[*]" end="[*]/"
syn match Comment "//.*$"

" TODO syn match Keyword "\<[a-zA-Z_][a-z0-9A-Z_]*\s*\(([^)]*)\)\?\s*+\?::\?:\?"
" TODO fields...
syn match Keyword "([A-Za-z\\-]+):\\s+([A-Za-z\\-]+)"
" TODO does this do anything?
syn region Object start="{" end="}" fold transparent

syntax keyword Type bulk enum future produces consumes event sync async action
syntax keyword Type subresource resource
syntax keyword Type structure union namespace
syntax match Type "\<request-resource\>"
syntax match Type "\<configuration-resource\>"
syntax match Type "\<asset-resource\>"
" TODO figure out how to include the "/" in the word
syntax match Type "\</operations\>"
syntax match Type "\</header\>"
syntax match Type "\</payload\>"
syntax keyword Special linked queryonly query mutable output
syntax  match Special "/<max-length\>"
syntax  match Special "/<min-length\>"
syntax  match Special "/<optional\>"
syntax  match Special "/<optional-get\>"
syntax  match Special "/<optional-post\>"
syntax  match Special "/<optional-put\>"

" TODO this is the same color as numbers...
syntax keyword Constant GET MULTIGET POST PUT DELETE EVENTS
" TODO constant match for string, boolean, etc.??
