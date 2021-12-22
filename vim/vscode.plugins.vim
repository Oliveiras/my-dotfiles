" AROLIVEIRA'S SELECTED PLUGINS FOR VSCODEVIM

" NOTE: You should import this file inside a Plug section.

" Multiple cursors (<C-n>, <C-x>, <C-p>, g<C-n>)
" Plug 'terryma/vim-multiple-cursors'

" Jump to char on screen (replace f/t) (fork of easymotion)
Plug 'asvetliakov/vim-easymotion'
let g:EasyMotion_smartcase = 1
let g:EasyMotion_do_mapping = 0
let g:EasyMotion_startofline = 0
map f <Plug>(easymotion-bd-fl)
map t <Plug>(easymotion-bd-tl)
map F <Plug>(easymotion-bd-fn)
map T <Plug>(easymotion-bd-tn)

