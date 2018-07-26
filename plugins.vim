call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'w0rp/ale'
Plug 'tomtom/tcomment_vim'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Fuzzy file, buffer, mru, tag, etc finder.
Plug 'ctrlpvim/ctrlp.vim'

" FZF =)
Plug '/opt/fzf' | Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'

" TagBar: Class browser
Plug 'majutsushi/tagbar'

" Undo tree
Plug 'mbbill/undotree'

" Git conflict - mergetool
Plug 'tpope/vim-fugitive'

" CoffeeScript
Plug 'kchmck/vim-coffee-script'
Plug 'mtscout6/vim-cjsx'

" TypeScript
Plug 'leafgarland/typescript-vim'

" Othes
Plug 'digitaltoad/vim-jade'
Plug 'wavded/vim-stylus'
Plug 'genoma/vim-less'

" Docker
Plug 'docker/docker', {'rtp': '/contrib/syntax/vim/'}

" Plug 'pangloss/vim-javascript'

" Jsx
Plug 'mxw/vim-jsx'

" Show the available 256 colors in vim.
Plug 'guns/xterm-color-table.vim'

" Autocompletion
Plug 'Valloric/YouCompleteMe', { 'do': './install.py --clang-completer --js-completer' }
Plug 'ternjs/tern_for_vim', { 'do': 'npm install' }

" Load on nothing
Plug 'nacitar/terminalkeys.vim', { 'on': [] }

" If in tmux
if $TMUX =~ "tmux" 
    " Load terminalkeys
    call plug#load('terminalkeys.vim')
endif

call plug#end()
