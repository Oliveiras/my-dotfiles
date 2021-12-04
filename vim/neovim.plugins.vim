" AROLIVEIRA'S SELECTED PLUGINS FOR NEOVIM

" NOTE: You should import this file inside a Plug section.

" Comment lines or blocks (gc)
Plug 'tpope/vim-commentary'

" Multiple cursors (<C-n>, <C-x>, <C-p>, g<C-n>)
Plug 'terryma/vim-multiple-cursors'

" Search for pattern in whole project (Ack)
Plug 'mileszs/ack.vim'
let g:ackprg = 'ag --vimgrep'

" Fuzzy find anything (FZF)
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
nnoremap <Leader>f/  :Ag<Space>
nnoremap <Leader>ff  :Files<CR>
nnoremap <Leader>fg  :GFiles<CR>
nnoremap <Leader>fb  :Buffers<CR>
nnoremap <Leader>fh  :History<CR>
nnoremap <Leader>ft  :Tags<CR>
nnoremap <Leader>fc  :Commits<CR>

" NerdTree (file browser)
Plug 'preservim/nerdtree'

" EditorConfig
Plug 'editorconfig/editorconfig-vim'

" Jump to char on screen (replace f/t)
Plug 'easymotion/vim-easymotion'
let g:EasyMotion_smartcase = 1
let g:EasyMotion_do_mapping = 0
let g:EasyMotion_startofline = 0
map f <Plug>(easymotion-bd-fl)
map t <Plug>(easymotion-bd-tl)
map F <Plug>(easymotion-bd-fn)
map T <Plug>(easymotion-bd-tn)

" Color scheme
Plug 'morhetz/gruvbox'
let g:gruvbox_italic=1
autocmd vimenter * colorscheme gruvbox
set background=light

