" General configuration -------------------------------------------------------
set number
set ruler

filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" Sets the number of columns for a TAB.
set softtabstop=4
" On pressing tab, insert 4 spaces
set expandtab

" Specific identations
augroup identationGroup
    " Prevent duplicates on multiple .vimrc load
    autocmd!
    " Vim
    autocmd Filetype vim setlocal tabstop=4 shiftwidth=4 softtabstop=4 expandtab
    " Python
    autocmd Filetype python setlocal tabstop=4 shiftwidth=4 softtabstop=4 expandtab
    " PHP
    autocmd Filetype php setlocal tabstop=4 shiftwidth=4 softtabstop=4 expandtab
    " Groovy
    autocmd Filetype groovy setlocal tabstop=4 shiftwidth=4 softtabstop=4 expandtab
    " Ruby
    autocmd Filetype ruby setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab
    " JavaScript
    autocmd Filetype javascript setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab
    autocmd Filetype typescript setlocal tabstop=4 shiftwidth=4 softtabstop=4 expandtab
    autocmd Filetype json setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab
    autocmd Filetype coffee setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab
    " Jade / HTML
    autocmd Filetype jade setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab
    autocmd Filetype pug setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab
    " Yaml
    autocmd Filetype yaml setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab
    " CSS / LESS / SASS / Stylus
    autocmd Filetype less setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab
    " autocmd Filetype sass setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab
    autocmd Filetype sass setlocal tabstop=4 shiftwidth=4 softtabstop=4 expandtab
    autocmd Filetype scss setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab
    autocmd Filetype styl setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab
    autocmd Filetype css setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab
    " Dockerfile
    autocmd Filetype dockerfile setlocal tabstop=4 shiftwidth=4 softtabstop=4 expandtab
    " Shell
    autocmd FileType sh setlocal tabstop=4 shiftwidth=4 softtabstop=4 expandtab formatoptions-=c formatoptions-=r formatoptions-=o
augroup END

set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<

" Autocompletion
set wildmenu
set wildmode=list:longest

" Seach
set hlsearch
set incsearch

set nopaste
set ttyfast

set autoindent
set showcmd
