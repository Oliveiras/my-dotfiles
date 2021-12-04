" AROLIVEIRA'S SELECTED PLUGINS FOR VIM-LIKE EDITORS
" 
" This file contains the plugins that are shared between vim, neovim, vscode
" (with neovim plugin) and IntelliJ (with ideavim plugin).
" Some of these mappings are not supported by all plugins, but they also don't
" harm.

" NOTE: You should import this file inside a Plug section.

" Highlight yanked text
Plug 'machakann/vim-highlightedyank'

" Repeat some plugin actions ( . )
Plug 'tpope/vim-repeat'

" Many new mappings ( [ , ] )
Plug 'tpope/vim-unimpaired'

" Edit surrounding quotes, parens, etc (ys)
Plug 'tpope/vim-surround'

" Replace motion with register contents (gr)
Plug 'vim-scripts/ReplaceWithRegister'

" Exchange two motions/objects (cx)
Plug 'tommcdo/vim-exchange'

" New text objects:
" entire buffer (ae, ie)
" function argument (aa, ia)
Plug 'kana/vim-textobj-user'
Plug 'kana/vim-textobj-entire'
Plug 'vim-scripts/argtextobj.vim'
let g:argtextobj_pairs="[:],(:),<:>"

" Align tabular text (ga)
Plug 'junegunn/vim-easy-align'
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

" Tmux integration
"" Plug 'tmux-plugins/vim-tmux-focus-events'

