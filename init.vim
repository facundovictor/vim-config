" http://vimdoc.sourceforge.net/htmldoc/usr_41.html#vim-script-intro:

" FIX ISSUE: http://unix.stackexchange.com/questions/305415/enabling-python3-on-vim-in-fedora-24
if exists('py2') && has('python')
elseif has('python3')
endif

" Set the mapleader before starting
let mapleader = "-"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" add all the plugins
source ~/.vim/plugins.vim

" Syntax ----------------------------------------------------------------------
source ~/.vim/syntax.vim

" Load configurations
" https://stackoverflow.com/questions/4500748/how-to-source-all-vim-files-in-directory
for f in split(glob('~/.vim/config/*.vim'), '\n')
    exe 'source' f
endfor

" THEMING ---------------------------------------------------------------------
source ~/.vim/theme.vim

" BINDINGS --------------------------------------------------------------------
source ~/.vim/bindings.vim
