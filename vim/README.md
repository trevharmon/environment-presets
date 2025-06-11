# VIM

## Installing `.vimrc`

This file can be copied or linked into the user's home directory.

## Installing `fugitive.vim`

This [plugin project](https://github.com/tpope/vim-fugitive) provides
additional support for Git. The provided install steps are as follows:

```bash
mkdir -p ~/.vim/pack/tpope/start
cd ~/.vim/pack/tpope/start
git clone https://tpope.io/vim/fugitive.git
vim -u NONE -c "helptags fugitive/doc" -c q
```
