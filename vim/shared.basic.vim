" AROLIVEIRA'S BASIC CONFIG FOR VIM-LIKE EDITORS
"
" This file has the basic config that is shared between vim, neovim, vscode
" (with neovim plugin) and IntelliJ (with ideavim plugin).
" Some of this configs are not supported by all plugins, but they also don't
" harm.

" ******************** COMPATIBILITY ********************

" Ignore compatibility to old vi
set nocompatible

" Enable mouse support
set mouse=a

" Operations that writes to the unnamed register also writes
" to the primary (*) and secondary (+) clipboard registers
set clipboard=unnamed,unnamedplus

" Default line ending
set fileformats=unix,dos,mac

" Don't treat numbers that starts with zero as octals
set nrformats-=octal

" Allow <Left> and <Right> to cross lines
set whichwrap+=<,>,],[

" ******************** APPEARANCE ********************

" Enable syntax highlight
syntax enable

" Use visual bell (no beeping)
set visualbell

" Highlight matching brace
set showmatch

" Do not wrap lines by default, but if wrapping is enabled, wrap at word boundary and show and indicator
set nowrap
set linebreak
set showbreak=⏎\ 

" Keep 2 lines when scrolling up/down and 5 columns when scrolling left/right
set scrolloff=2
set sidescrolloff=5

" ******************** COMMAND LINE ********************

" Show partial commands
set showcmd

" Better tab completion in the commandline
set wildmenu

" List all matches and complete to the longest match.
set wildmode=longest:full

" Ignore case when completing file paths
set wildignorecase

" Confirm dialog for commands that requires saving
set confirm

" Recursive find file
set path=**

" ******************** STATUS LINE ********************

" Always show statusline
set laststatus=2

" Satusline indicates insert or normal mode
set showmode

" Set statusline display
set statusline=%<%f                                                                   " file path
set statusline+=\ %y                                                                  " file type (syntax)
set statusline+=[%{''.(&fenc!=''?&fenc:&enc).''}]                                     " file encoding
set statusline+=[%{&ff}]                                                              " file line-ending format
set statusline+=\ %h%w%m%r                                                            " buffer flags
set statusline+=%=                                                                    " (separator)
set statusline+=%-14.((%n)%)                                                          " buffer number
set statusline+=%-14.(%l,%c%V%)\ %P                                                   " buffer position
"" set statusline+=%=[BUFFER=%n/%{len(filter(range(1,bufnr('$')),'buflisted(v:val)'))}]  " buffer number/total
"" set statusline+=[WINDOW=%{winnr()}]                                                   " window number

" ******************** SEARCHING ********************

" Highlight all search results
set hlsearch

" Searches are case-insensitive
set ignorecase

" Search becomes case-sensitive if search-term contais upper-case letters
set smartcase

" Use incremental search
set incsearch

" ******************** INDENTING ********************

" Use current indent for new lines
set autoindent

" Use <Tab>/<BS> to indent/unindent by `shiftwidth`
set smarttab

" Indent with 4 spaces, by default
" also see: `tabstop` and `softtabstop`
set expandtab
set shiftwidth=4

" Backspace can un-indent
set backspace=indent,eol,start

" Enable filetype detection and load plugins and indentation settings for each filetype
filetype plugin indent on

" ******************** BUFFERS, TABS, WINDOWS ********************

" Allows switching from an unsaved buffer
set hidden

" New windows appear on right or bottom
set splitright
set splitbelow

" ******************** AUTO SAVE AND READ ********************

" Reload files changed outside of vim
set autoread

" Enable backup files
set backup

" Set backup, swap and view directory
set backupdir=$HOME/.vim/tmp/backup
set dir=$HOME/.vim/tmp/swap
set viewdir=$HOME/.vim/tmp/view

" Create backup, swap and view directories, if they does't exist
if !isdirectory(&backupdir) | call mkdir(&backupdir, 'p', 0700) | endif
if !isdirectory(&dir)       | call mkdir(&dir, 'p', 0700)       | endif
if !isdirectory(&viewdir)   | call mkdir(&viewdir, 'p', 0700)   | endif

" Keep at least 1.000 items in the history
if &history < 1000
  set history=1000
endif

" When opening a file, always jump to the last known cursor position.
" Don't do it when the position is invalid,
" when inside an event handler (happens when dropping a file on gvim)
" and for a commit message (it's likely a different one than last time).
autocmd BufReadPost *
            \ if line("'\"") >= 1 && line("'\"") <= line("$") && &ft !~# 'commit'
            \ |   exe "normal! g`\""
            \ | endif

" ******************** MAPPINGS ********************

" Fix inconsistencies
nnoremap Y      y$
xnoremap *      "yy/<C-r>y<CR>
xnoremap #      "yy?<C-r>y<CR>

" Clear search highlighting
nnoremap <C-L> :noh<CR>

" Maintain Visual Mode after shifting with > and <
vmap < <gv
vmap > >gv

