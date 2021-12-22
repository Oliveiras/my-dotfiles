" AROLIVEIRA'S NEOVIM CONFIG FILE

" Configure path
set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath

" Import configs
source ~/.config/vim/shared.basic.vim
source ~/.config/vim/neovim.basic.vim
source ~/.config/vim/shared.mappings.vim
source ~/.config/vim/neovim.mappings.vim

" Start plugins section
call plug#begin('~/.vim/plugged')

" Import plugins
source ~/.config/vim/shared.plugins.vim
source ~/.config/vim/neovim.plugins.vim

" End plugins section
call plug#end()

