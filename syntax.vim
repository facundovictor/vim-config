" Syntax specific configurations

" Import all file syntax definitions
for f in split(glob('~/.vim/syntax/*.vim'), '\n')
    exe 'source' f
endfor

" Recognize groovy
au BufNewFile,BufRead *.groovy  setf groovy
au BufNewFile,BufRead Jenkinsfile*  setf groovy
