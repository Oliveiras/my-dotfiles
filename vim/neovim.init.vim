" AROLIVEIRA'S NEOVIM CONFIG FILE

" Configure path
set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath

" Import configs
source ~/.vim/shared.basic.vim
source ~/.vim/neovim.basic.vim
source ~/.vim/shared.mappings.vim
source ~/.vim/neovim.mappings.vim

" Start plugins section
call plug#begin('~/.vim/plugged')

" Import plugins
source ~/.vim/shared.plugins.vim
source ~/.vim/neovim.plugins.vim

" End plugins section
call plug#end()

