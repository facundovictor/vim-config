" BINDINGS --------------------------------------------------------------------

" Eliminates delay issues
set timeoutlen=1000 ttimeoutlen=50

noremap <A-PageUp> :tabmove -1<CR>
noremap <A-PageDown> :tabmove +1<CR>

" Toggle tabs display
noremap <C-k> :setlocal list!<CR>

" Toggle english spelling check
noremap <C-m> :setlocal spell! spelllang=en_us<CR>

" Show invisible characters
noremap <C-k> :setlocal list!<CR>

" Set the mapleader
let mapleader = "¡"

" Edit my .vimrc file"
nnoremap <leader>ev :vsplit $MYVIMRC<cr>

" Source my .vimrc file (This reloads the configuration)
nnoremap <silent> <leader>sv :source $MYVIMRC<cr>

" Selects all in the current buffer
nnoremap <leader>av ggvGg_

" Select the current
nnoremap <leader>v ^vg_

" Navigate between errors
nmap <silent> <S-h> <Plug>(ale_previous_wrap)
nmap <silent> <C-h> <Plug>(ale_next_wrap)

" Toggle errors visibility
noremap <silent> <C-e> :ALEToggle<CR>

" Move lines
nnoremap <leader>f :m .+1<CR>==
nnoremap <leader>F :m .-2<CR>==
inoremap <leader>f <Esc>:m .+1<CR>==gi
inoremap <leader>F <Esc>:m .-2<CR>==gi
vnoremap <leader>f :m '>+1<CR>gv=gv
vnoremap <leader>F :m '<-2<CR>gv=gv

" Quickfix
nnoremap <leader>n :cnext<CR>
nnoremap <leader>N :cprevious<CR>
nnoremap <leader>g :cfirst<CR>
nnoremap <leader>G :clast<CR>
