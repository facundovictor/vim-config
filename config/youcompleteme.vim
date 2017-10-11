" YouCompleteMe Configuration -------------------------------------------------
" ['same-buffer', 'horizontal-split', 'vertical-split', 'new-tab', 'new-or-existing-tab']
let g:ycm_goto_buffer_command = 'new-or-existing-tab'
let g:ycm_collect_identifiers_from_tags_files = 1
let g:ycm_complete_in_comments = 1
let g:ycm_seed_identifiers_with_syntax = 1

" Fix for working with virtualenvs: https://github.com/Valloric/YouCompleteMe#i-get-importerror-exceptions-that-mention-pyinit_ycm_core-or-initycm_core 
" let g:ycm_server_python_interpreter = 'env python'
let g:ycm_python_binary_path = 'python'

" bind
nnoremap <leader>jd :YcmComplete GoTo<CR>
