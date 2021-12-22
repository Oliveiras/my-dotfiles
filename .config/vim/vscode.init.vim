" AROLIVEIRA'S VSCODEVIM CONFIG FILE

" Import configs
source ~/.config/vim/shared.basic.vim
source ~/.config/vim/vscode.basic.vim
source ~/.config/vim/shared.mappings.vim
source ~/.config/vim/vscode.mappings.vim

" Start plugins section
call plug#begin('~/.vim/plugged')

" Import plugins
source ~/.config/vim/shared.plugins.vim
source ~/.config/vim/vscode.plugins.vim

" End plugins section
call plug#end()

