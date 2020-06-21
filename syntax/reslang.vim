" TODO can we simplify these? google vim syn highlight numbers
" numbers
syn match Number "\<\d*\([Ee][+-]\?\d\+\)\?\>"
syn match Number "\<\d\+[.]\d*\([Ee][+-]\?\d\+\)\?\>"
syn match Number "\<[.]\d\+\([Ee][+-]\?\d\+\)\?\>"

" strings
syn region String start='L\="' end='"'

" comments
syn region Comment start="/[*]" end="[*]/"
syn match Comment "//.*$"

" keywords
syn keyword Type bulk enum future produces consumes event sync async action
" TODO make sure it respects word boundaries with these..
syn keyword Type subresource resource
syn keyword Type structure union namespace
syn match Type "\<request-resource\>"
syn match Type "\<configuration-resource\>"
syn match Type "\<asset-resource\>"
" TODO word can't start with "/"... halp
" instead, how about  \s+/operations$
" eh, the whitespace might not be there... how about nothing, or whitespace,
" followed by /operations: [^|\s]\/operations[$|\s]
syn match Type "\<[/]operations\>"
syn match Type "\</header\>"
syn match Type "\</payload\>"

syn keyword Special linked queryonly query mutable output example
syn match Special "\<max-length\>"
syn match Special "\<min-length\>"
syn match Special "\<optional\>"
syn match Special "\<optional-get\>"
syn match Special "\<optional-post\>"
syn match Special "\<optional-put\>"

" actions
syn keyword Constant GET MULTIGET POST PUT DELETE EVENTS
