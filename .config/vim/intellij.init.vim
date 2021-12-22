" ALEX'S IDEAVIM CONFIG FILE

"""""""""""""""""""" COMPATIBILITY """"""""""""""""""""

let EASYMOTION = 1
let FZF = 0

"""""""""""""""""""" IDEAVIM SETTINGS """"""""""""""""""""

set ideajoin
set ideastatusicon=enabled

"""""""""""""""""""" PLUGINS """"""""""""""""""""

source ~/.config/vim/basic.vim
source ~/.config/vim/mappings.vim
source ~/.config/vim/plugins.vim

set surround
set multiple-cursors
set commentary
set argtextobj
set easymotion
set textobj-entire
set ReplaceWithRegister

"""""""""""""""""""" FIX MAPPINGS """"""""""""""""""""

" Fix windows related
"" <Leader>wr  (pending)

" Fix buffers related
nnoremap q           :close<CR>
nnoremap <Tab>       :prev<CR>
nnoremap <S-Tab>     :next<CR>
nnoremap <Leader>be  :action NewFile<CR>

" Fix jump related
nnoremap <C-o>       :action Back<CR>
nnoremap <C-i>       :action Forward<CR>

" Fix find related
nnoremap <Leader>f/  :action FindInPath<CR>
nnoremap <Leader>ff  :action GotoFile<CR>
"" <Leader>fg  (pending)
nnoremap <Leader>fb  :action RecentFiles<CR>
nnoremap <Leader>fh  :action RecentLocations<CR>
nnoremap <Leader>ft  :action GotoSymbol<CR>
" <Leader>fc  (pending)
nnoremap <Leader>fm  :action GotoClass<CR>

" Fix unimpaired related
nnoremap [<Space>    mmO<Esc>`m
nnoremap ]<Space>    mmo<Esc>`m

"""""""""""""""""""" IDEAVIM MAPPINGS """"""""""""""""""""

" Super useful command on super easy key
nnoremap \         :action GotoAction<CR>

" Jump (under cursor)
nnoremap ,i        :action GotoImplementation<CR>
nnoremap ,r        :action GotoTypeDeclaration<CR>
nnoremap ,s        :action GotoSuperMethod<CR>
nnoremap ,t        :action GotoTest<CR>
nnoremap ,f        :action ShowUsages<CR>
nnoremap ,e        :action JumpToLastChange<CR>

" Refactor code
nnoremap <Leader>rr :action RefactoringMenu<CR>
nnoremap <Leader>rt :action Refactorings.QuickListPopupAction<CR>
xnoremap <Leader>rt :action Refactorings.QuickListPopupAction<CR>
nnoremap <Leader>ra :action AnalyzeMenu<CR>
nnoremap <Leader>re :action RenameElement<CR>
nnoremap <Leader>rm :action Move<CR>
nnoremap <Leader>ri :action Inline<CR>
nnoremap <Leader>rs :action SurroundWith<CR>
xnoremap <Leader>rs :action SurroundWith<CR>
nnoremap <Leader>rv :action IntroduceVariable<CR>

" Introspect code
inoremap <C-q>      <Esc>:action QuickJavaDoc<CR>a
nnoremap <C-q>      :action QuickJavaDoc<CR>
nnoremap <Leader>ii :action QuickActions<CR>
nnoremap <Leader>id :action QuickJavaDoc<CR>
nnoremap <Leader>ip :action ParameterInfo<CR>
nnoremap <Leader>iu :action FindUsages<CR>
nnoremap <Leader>ic :action CallHierarchy<CR>
nnoremap <Leader>im :action MethodHierarchy<CR>
nnoremap <Leader>it :action TypeHierarchy<CR>

" Pending
" Git related (Annotate, GitFileActions, GitRepositoryActions, Git.ResolveConflicts)
" Debug related (Debug Stop GotoNextError ToggleLineBreakpoint)

