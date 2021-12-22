" AROLIVEIRA'S KEYBOARD MAPPINGS FOR VIM-LIKE EDITORS
"
" This file contains the mappings that are shared between vim, neovim, vscode
" (with neovim plugin) and IntelliJ (with ideavim plugin).
" Some of these mappings are not supported by all plugins, but they also don't
" harm.

" ******************** LINKS / DOCS ********************

" Unused keys
" https://vim.fandom.com/wiki/Unused_keys
"   ,   ;   - When f/t is replace by easymotion

" Changed keys
"   q       - Quit
"   d       - Delete (don't cut, send to blackhole register)
"   s       - Cut (send to unnamed register)
"   ç       - Esc (only on insert mode)
"   f/t     - When easymotion is enabled
"   \       - Prefix for custom or temporary commands

" ******************** MAPPINGS ********************

" Map <Leader> key to <Space>
let mapleader=' '

" Wrap aware line movement
map     <Up>    gk
imap    <Up>    <C-o>gk
map     <Down>  gj
imap    <Down>  <C-o>gj

" Dont pollute my clipboard
nnoremap x      "_x
nnoremap X      "_X
nnoremap c      "_c
nnoremap C      "_C
nnoremap cc     "_cc
nnoremap d      "_d
nnoremap D      "_D
nnoremap dd     "_dd
xnoremap x      "_x
xnoremap c      "_c
xnoremap d      "_d

" Why if I want to pollute the clipboard
nnoremap s      d
nnoremap S      D
nnoremap ss     dd
xnoremap s      d

" Dont bug my brain (ALT+TAB, CTRL+C, ALT+TAB, CTRL+V, D'oh!)
xnoremap <C-x>  d
xnoremap <C-c>  y
xnoremap <C-v>  P
nnoremap <C-v>  P
inoremap <C-v>  <C-r>*

" Avoid reaching Esc
inoremap ç      <Esc>
inoremap \ç     ç
nnoremap ã      açã
nnoremap õ      açõ

" Windows related
nnoremap Q           :quit<CR>
nnoremap <Leader>ww  <C-w>w
nnoremap <Leader>ws  :vsplit<CR>
nnoremap <Leader>wd  :split<CR>
nnoremap <Leader>wo  :only<CR>
nnoremap <Leader>wr  <C-w>r

" Buffers related
nnoremap q           :bd<CR>
nnoremap <Tab>       :bprev<CR>
nnoremap <S-Tab>     :bnext<CR>
nnoremap <C-s>       :w<CR>
nnoremap <Leader>bb  :buffers<CR>:buffer<Space>
nnoremap <Leader>be  :enew<CR>
nnoremap <Leader>bf  :find<Space>
nnoremap <Leader>bs  :w<CR>

" Macros related
nnoremap <Leader>q   q

