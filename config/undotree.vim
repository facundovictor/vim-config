" UndoTree Configuration ------------------------------------------------------
" Reference: https://github.com/mbbill/undotree/blob/master/plugin/undotree.vim

" Toggle"
map <F5> :UndotreeToggle<CR>

" Style 4
" +------------++----------+
" |             |          |
" |             | undotree |
" |             |          |
" +-------------+----------+
" |                 diff   |
" +------------------------+
let g:undotree_WindowLayout = 4

" Default diff heigh
let g:undotree_DiffpanelHeight = 20
