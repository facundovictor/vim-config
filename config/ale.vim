" Ale Configuration -----------------------------------------------------------
let g:ale_statusline_format = ['x %d', '⚠ %d', '⬥ ok']
let g:ale_open_list=0
let g:ale_set_loclist=1
let g:ale_set_quickfix=0

" Close the loclist window automatically when the buffer is closed.
augroup CloseLoclistWindowGroup
  autocmd!
  autocmd QuitPre * if empty(&buftype) | lclose | endif
augroup END

" Toggle loclist
function! ToggleLocList()
    if empty(filter(getwininfo(), 'v:val.loclist'))
        lopen
    else
        lclose
    endif
endfunction

nnoremap <leader>ll :call ToggleLocList()<cr>
