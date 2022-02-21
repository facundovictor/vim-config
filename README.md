# Configuration for NeoVim and compatible for VIM 8

In progress... from https://gist.github.com/facundovictor/42733b014bcc479f5cd8

Plugging manager used: [vim.plug](https://github.com/junegunn/vim-plug)

Color schema used: [jellybeans](https://github.com/nanotech/jellybeans.vim)

## Usage

Manually:

1 - Install dependencies
```
        "automake"
        "gcc"
        "gcc-c++"
        "kernel-devel"
        "cmake"
        "python-devel"
        "python3-devel"
        "node"
        "npm"
```
2 - Clone the repo
3 - Link .vimrc to init.vim

```sh
ln -s /path/to/vim-config/init.vim ~/.vimrc
ln -s /parh/to/vim-config/ ~/.vim/
```

4 - Install the Plugins

```sh
vim -c PlugInstall
```

Automatically:

```sh
1 - Clone the repo
2 - cd into the repo
3 - ./install.sh

TODO:
- Evaluate adding snipets 
- Evaluate moving from YouCompleteMe to deplete.vim --> https://github.com/Shougo/deoplete.nvim or https://github.com/ncm2/ncm2
- Evaluate eclim for semantic autocompletion and other alternatives --> http://eclim.org/vim/code_completion.html
- Java support: https://spacevim.org/use-vim-as-a-java-ide/
- Cloudformation snippet https://github.com/lunarxlark/aws-cfn-snippet.vim (requires neosnippet)
