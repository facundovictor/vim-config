" Airline configuration -------------------------------------------------------

" Make airline to appear on all the tabs
set laststatus=2

" Use 256 colors
set t_Co=256

call airline#parts#define_function('ALE', 'ALEGetStatusLine')
call airline#parts#define_condition('ALE', 'exists("*ALEGetStatusLine")')
let g:airline_section_error = airline#section#create_right(['ALE'])
" let g:airline_theme='durant'
" let g:airline_theme='powerlineish'
" let g:airline_theme='simple'
" let g:airline_theme='term'
let g:airline_theme='jellybeans'

let g:airline_powerline_fonts = 1

" powerline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''
