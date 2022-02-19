" AROLIVEIRA'S NEOVIM CONFIG FILE

" BASIC {{{
" ------------------------------------------------------------------------------

" Enable true colors
set termguicolors

" Backgroud color matching the terminal one
set background=light

" }}}

" PLUGINS {{{
" ------------------------------------------------------------------------------

" Start plugins section
call plug#begin()

" Highlight yanked text
Plug 'machakann/vim-highlightedyank'

" Defaults almost everyone can agreee on
Plug 'Oliveiras/vim-better-defaults'
let g:default_statusline_left_separator = "  "
let g:default_statusline_right_separator = "  "

" Auto-adjust shiftwidth, expandtab and EditorConfig support
Plug 'tpope/vim-sleuth'

" Readline key bindings for command mode
Plug 'tpope/vim-rsi'

" Add closing blocks automatically
Plug 'tpope/vim-endwise'

" Continuously updated session files
Plug 'tpope/vim-obsession'

" Increment dates and times with <C-a> / <C-x>
Plug 'tpope/vim-speeddating'

" Vim sugar for the UNIX shell commands (:Delete: :Move :Rename :Llocate :SudoWrite :SudoEdit)
Plug 'tpope/vim-eunuch'

" Enhances netrw, the built in directory browser (- . y. ~ <C-6>)
Plug 'tpope/vim-vinegar'

" Repeat some plugin actions ( . )
Plug 'tpope/vim-repeat'

" Many new mappings starting with '[' and  ']'
Plug 'tpope/vim-unimpaired'

" Edit surrounding quotes, parens, etc (ys)
Plug 'tpope/vim-surround'

" Comment lines of blocks (gc)
Plug 'tpope/vim-commentary'

" Basic tmux support for Vim (:Tmux :Tyank :Tput :Twrite :Tattach).
Plug 'tpope/vim-tbone'

" Navigate between vim splits and tmux panes (<C-h> <C-j> <C-k> <C-l> <C-\>)
Plug 'christoomey/vim-tmux-navigator'

" Run command in small tmux pane at bottom (:VimuxRunCommand :VimuxRunLastCommand)
Plug 'preservim/vimux'

" Git plugin (:Git :GMove :GRename :GDelete :GBrowse)
Plug 'tpope/vim-fugitive'

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

" Multiple cursors (<C-n> <C-x> <C-p> g<C-n>)
Plug 'terryma/vim-multiple-cursors'

" Search for pattern in whole project (:Ack)
Plug 'mileszs/ack.vim'
let g:ackprg = 'ag --vimgrep'

" Fuzzy find anything (:FZF)
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'

" Jump to char on screen
Plug 'easymotion/vim-easymotion'
let g:EasyMotion_smartcase = 1
let g:EasyMotion_do_mapping = 0
let g:EasyMotion_startofline = 0

" Open browser on given URL
Plug 'tyru/open-browser.vim'

" Snippets
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

" Markdown support
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}

" PlantUML support
Plug 'aklt/plantuml-syntax'
Plug 'weirongxu/plantuml-previewer.vim'

" Color scheme
Plug 'NLKNguyen/papercolor-theme'
autocmd vimenter * colorscheme PaperColor

" End plugins section
call plug#end()

" }}}

" MAPPINGS {{{
" ------------------------------------------------------------------------------
" Not using: F t T ; : Ç S

" Map <Leader> and <LocalLeader>
let mapleader=' '
let maplocalleader=','

" Interaction with the clipboard
nnoremap <Leader>d      "*d
xnoremap <Leader>d      "*d
nnoremap <Leader>D      "*D
nnoremap <Leader>y      "*y
xnoremap <Leader>y      "*y
nnoremap <Leader>Y      "*y$
nnoremap <Leader>p      "*p
xnoremap <Leader>p      "*p
nnoremap <Leader>P      "*P
nnoremap <Leader>gr     "*gr
xnoremap <Leader>gr     "*gr

" Simulate common Windows keybindings
xnoremap <C-x>          "*d
xnoremap <C-c>          "*y
xnoremap <C-v>          "*P
nnoremap <C-v>          "*P
inoremap <C-v>          <C-r>*
nnoremap <C-s>          :w<CR>
inoremap <C-s>          <C-o>:w<CR>

" Avoid reaching Esc
inoremap ç              <Esc>
inoremap \ç             ç
nnoremap ã              açã
nnoremap õ              açõ
inoremap <F4>ç          <C-o>:inoremap ç 

" Commonly used commands on easier keys
nnoremap q              :bd<CR>
nnoremap \q             q
nnoremap <Leader>q      :q<CR>
map f                   <Plug>(easymotion-s)
nnoremap \f             f
nnoremap s              <C-w>
nnoremap \s             s
nnoremap ç              :

" FZF
nnoremap <Leader>f/  :Ag<Space>
nnoremap <Leader>ff  :Files<CR>
nnoremap <Leader>fg  :GFiles<CR>
nnoremap <Leader>fb  :Buffers<CR>
nnoremap <Leader>fh  :History<CR>
nnoremap <Leader>ft  :Tags<CR>
nnoremap <Leader>fc  :Commits<CR>

" }}}

