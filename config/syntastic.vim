" Syntastic Configuration -----------------------------------------------------

" TODO: Refactor this to a separate module
" https://github.com/vim-syntastic/syntastic/issues/974
function! JavascriptEslintConfig(curpath)
  let parent=1
  let local_path=a:curpath
  let local_jscs=local_path . '.eslintrc.json'

  while parent <= 255
    let parent = parent + 1
    if filereadable(local_jscs)
      return '--config ' . local_jscs
    endif
    let local_path = local_path . '../'
    let local_jscs = local_path . '.eslintrc.json'
  endwhile

  unlet parent local_jscs

  return ''
endfunction

let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['eslint']
" let g:syntastic_javascript_checkers = ['jsl']
" let g:syntastic_javascript_checkers = ['jscs']
" let g:syntastic_javascript_jscs_args = '--preset=airbnb'
let g:syntastic_javascript_jscs_args = JavascriptEslintConfig(getcwd() . "/")
let g:syntastic_enable_signs=1                                                  
let g:syntastic_coffee_coffeelint_args = "--csv --file config.json"

" Adapt it to use the proper python version, according to the environment.
let g:syntastic_python_python_exec = '/usr/bin/env python'

highlight SyntasticErrorLine guibg=#2f0000

" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*

let g:syntastic_always_populate_loc_list = 1

" Allows to toggle the error's window visibility
function! ToggleErrors()
    let old_last_winnr = winnr('$')
    lclose
    if old_last_winnr == winnr('$')
        " Nothing was closed, open syntastic error location panel
        Errors
    endif
endfunction

" Bind toggleErrors to <F2> 
"noremap <silent> <C-e> : call ToggleErrors()<CR>
" noremap <C-e> : call ToggleErrors()<CR>
