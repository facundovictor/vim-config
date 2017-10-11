" TagBar Configuration --------------------------------------------------------

" autofocus on Tagbar open
let g:tagbar_autofocus = 1

" toggle Tagbar display
map <F4> :TagbarToggle<CR>

" Set default width
let g:tagbar_width = 30

" Load the CoffeeScript type support
let g:tagbar_type_coffee = {
    \ 'ctagstype' : 'coffee',
    \ 'kinds'     : [
        \ 'c:classes',
        \ 'm:methods',
        \ 'f:functions',
        \ 'v:variables',
        \ 'f:fields',
    \ ]
\ }

" Load the JavaScript type support
let g:tagbar_type_javascript = {
    \ 'ctagstype' : 'js',
    \ 'kinds'     : [
        \ 'o:objects',
        \ 'u:functions',
        \ 'v:variables',
        \ 'c:controllers',
        \ 'd:directives',
        \ 's:services',
        \ 'f:factories',
        \ 'm:modules',
        \ 'c:controllers',
    \ ]
\ }
