" ALEX'S VIMRC

" Download and source my plugin (better-defaults)
if has('unix')

	" URL to download my plugin
	let plug_url = 'https://raw.githubusercontent.com/Oliveiras/vim-better-defaults/main/plugin/better-defaults.vim'
	let plug_dir = expand('~/.config/vim/plugins/')
	let plug_file = plug_dir . 'better-defaults.vim'

	" Create plugins dir and download my plugin
	if ! filereadable(plug_file)
		exe "!mkdir -p " . plug_dir
		exe "!curl -k " . plug_url . " --output " . plug_file
	endif

	" Source my plugin
	if filereadable(plug_file)
		set statusline=
		exe "source " . plug_file
	endif

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
" replace with register
nmap <Leader>gr         "*gr
xmap <Leader>gr         "*gr
" exchange
nmap <Leader>cx         "*cx
xmap <Leader>X          "*X

" Avoid polluting registers
nnoremap c              "_c
nnoremap C              "_C
nnoremap x              "_x
nnoremap X              "_X

" Simulate common Windows keybindings
nnoremap <C-s>          :w<CR>
inoremap <C-s>          <Esc>:w<CR>

" Commonly used commands on easier keys
nnoremap \q             q
nnoremap q              :bd<CR>
nnoremap Q              :close<CR>
nnoremap <Leader>q      :qa<CR>
nnoremap \s             s
nnoremap s              <C-w>
nnoremap sn             :bn<CR>
nnoremap sp             :bp<CR>

" Simulate unimpaired
nnoremap [<Space>       mmO<Esc>`m
nnoremap ]<Space>       mmo<Esc>`m

" My keybindings
nnoremap <Leader>i      i <Left>

