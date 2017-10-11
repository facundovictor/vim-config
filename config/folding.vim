" Folding ---------------------------------------------------------------------
"
" Note : za --> toggle fold
"        zd --> remove fold
"        zo --> open fold
"        zc --> close fold
"
" with foldmethod=manual may be more confortable than this
"        va}zf --> close the current block

" Fold by grouping indented text
set foldmethod=indent

" Sets the maximum nesting of folds
set foldnestmax=10

" Avoid folding when the file is being open
set nofoldenable

" Folds with a higher level will be closed
set foldlevel=2
