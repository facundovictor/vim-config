" CtrlP Configuration ---------------------------------------------------------
" let g:ctrlp_map = '<F2>'
" map ,e <F2>

" to search in the current open buffers
nnoremap ,b :CtrlPBuffer<CR>
" to search listing all tags
nnoremap ,t :CtrlPBufTag<CR>
" to search through the current file's lines
nnoremap ,l :CtrlPLine<CR>
" to search listing all Most-Recently-Used file.
nnoremap ,r :CtrlPMRUFiles<CR>

" to be able to call CtrlP with default search text
function! CtrlPWithSearchText(search_text, ctrlp_command_end)
    execute ':CtrlP' . a:ctrlp_command_end
    call feedkeys(a:search_text)
endfunction

" CtrlP with default text
nnoremap ,wg :call CtrlPWithSearchText(expand('<cword>'), 'BufTag')<CR>
nnoremap ,wf :call CtrlPWithSearchText(expand('<cword>'), 'Line')<CR>
nnoremap ,d ,wg
nnoremap ,we :call CtrlPWithSearchText(expand('<cword>'), '')<CR>
nnoremap ,pe :call CtrlPWithSearchText(expand('<cfile>'), '')<CR>

" Don't change working directory
let g:ctrlp_working_path_mode = 0

" Ignore this files/dirs
let g:ctrlp_custom_ignore = {
            \ 'dir': '\v[\/](\.git|\.hg|\.svn)$',
            \ 'file': '\.pyc$\|\.pyo$',
            \ }

" Update the search once the user ends typing.
let g:ctrlp_lazy_update = 2

" The Silver Searcher
if executable('ag')
    " Use ag in CtrlP for listing files, lightning fast.
    let ignores = '--ignore ".git/" --ignore ".hg/" --ignore ".svn/"'  " dirs
    let ignores .= ' --ignore "*.pyc" --ignore "*.pyo"'                " files
    let g:ctrlp_user_command = 'ag %s -l --skip-vcs-ignores --nocolor -g "" ' . ignores

    " ag is fast enough that CtrlP doesn't need to cache
    let g:ctrlp_use_caching = 0

    nnoremap <leader>ag :Ag 
endif
