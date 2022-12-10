" ALEX'S VIMRC (SHARED WITH NVIM)

" URL to download my plugin (better-defaults)
let plug_url = 'https://raw.githubusercontent.com/Oliveiras/vim-better-defaults/main/plugin/better-defaults.vim'
let plug_dir = expand('~/.config/vim/plugins/')
let plug_file = plug_dir . 'better-defaults.vim'

" Create plugins dir and download my plugin
if has('unix') && ! filereadable(plug_file)
	exe "!mkdir -p " . plug_dir
	exe "!curl -k " . plug_url . " --output " . plug_file
endif

" Clear possible statusline
let &statusline=''

" Source my plugin
if filereadable(plug_file)
	exe "source " . plug_file
endif

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

" Simulate common Windows keybindings
nnoremap <C-s>          :w<CR>
inoremap <C-s>          <C-o>:w<CR>

" Avoid reaching Esc
inoremap ç              <Esc>
inoremap \ç             ç
nnoremap ã              açã
nnoremap õ              açõ

" Commonly used commands on easier keys
nnoremap q              :bd<CR>
nnoremap \q             q
nnoremap <Leader>q      :q<CR>
nnoremap s              <C-w>
nnoremap \s             s
nnoremap ç              :

