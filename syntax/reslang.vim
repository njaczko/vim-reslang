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

" fields
" TODO right now this matches UserOrgPermissions::check but it shouldn't
syn match Keyword "[A-Za-z-]\+:"

" TODO look at the reslang pretty-print html thing that mcv wrote. are all the
" keywords/modifiers/etc. the same color? how many total colors are there?
" keywords
syn keyword Type bulk enum future produces consumes event sync async action
syn keyword Type subresource resource
syn keyword Type structure union namespace
syn match Type "\<request-resource\>"
syn match Type "\<configuration-resource\>"
syn match Type "\<asset-resource\>"
" TODO word can't start with "/"... halp
" instead, how about  \s+/operations$
syn match Type "\<[/]operations\>"
syn match Type "\</header\>"
syn match Type "\</payload\>"
"
" TODO these get the Special highlight instead of the regular field highlight
" (because this is called after the fields match is added) should they just
" have the regular field highlighting? will they ever appear outside of fields?
" TODO include example?
syn keyword Special linked queryonly query mutable output
syn match Special "\<max-length\>"
syn match Special "\<min-length\>"
syn match Special "\<optional\>"
syn match Special "\<optional-get\>"
syn match Special "\<optional-post\>"
syn match Special "\<optional-put\>"

" actions
syn keyword Constant GET MULTIGET POST PUT DELETE EVENTS
" TODO constant match for the types string, boolean, etc.??
