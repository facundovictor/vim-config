" FZF Configuration -----------------------------------------------------------
nnoremap <F2> :FZF<CR>
nnoremap ,e :call fzf#vim#gitfiles('', fzf#vim#with_preview('right'))<CR>
