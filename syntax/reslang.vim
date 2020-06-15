" TODO can we simplify these? google vim syn highlight numbers
syn match Number "\<\d*\([Ee][+-]\?\d\+\)\?\>"
syn match Number "\<\d\+[.]\d*\([Ee][+-]\?\d\+\)\?\>"
syn match Number "\<[.]\d\+\([Ee][+-]\?\d\+\)\?\>"

" TODO strings are descriptions in reslang. is there a better color thing to use?
syn region String start='L\="' end='"'

syn region Comment start="/[*]" end="[*]/"
syn match Comment "//.*$"

" fields.
syn match Keyword "[A-Za-z-]\+:"

" TODO look at the reslang pretty-print html thing that mcv wrote. are all the
" keywords/modifiers/etc. the same color? how many total colors are there?
syn keyword Type bulk enum future produces consumes event sync async action
syn keyword Type subresource resource
syn keyword Type structure union namespace
syn match Type "\<request-resource\>"
syn match Type "\<configuration-resource\>"
syn match Type "\<asset-resource\>"
" TODO word can't start with "/"...
syn match Type "\</operations\>"
syn match Type "\</header\>"
syn match Type "\</payload\>"
" TODO these get the Special highlight instead of the regular field highligh
" (because this is called after the fields match is added) should they just
" have the regular field highlighting? will they ever appear outside of fields?
syn keyword Special linked queryonly query mutable output
syn match Special "\<max-length\>"
syn match Special "\<min-length\>"
syn match Special "\<optional\>"
syn match Special "\<optional-get\>"
syn match Special "\<optional-post\>"
syn match Special "\<optional-put\>"

" TODO this is the same color as numbers...
syn keyword Constant GET MULTIGET POST PUT DELETE EVENTS
" TODO constant match for string, boolean, etc.??
" Probably don't want to do this: if we wanted to be real fancy, we could
" match string, boolean, etc. as well as structures defined in the file...
" `structure foo {` or `resource foo {`
