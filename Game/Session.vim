let SessionLoad = 1
if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
inoremap <Plug>(emmet-anchorize-summary) =emmet#util#closePopup()
inoremap <Plug>(emmet-anchorize-url) =emmet#util#closePopup()
inoremap <Plug>(emmet-remove-tag) =emmet#util#closePopup()
inoremap <Plug>(emmet-split-join-tag) :call emmet#splitJoinTag()
inoremap <Plug>(emmet-toggle-comment) =emmet#util#closePopup()
inoremap <Plug>(emmet-image-size) =emmet#util#closePopup()
inoremap <Plug>(emmet-move-prev-item) :call emmet#moveNextPrevItem(1)
inoremap <Plug>(emmet-move-next-item) :call emmet#moveNextPrevItem(0)
inoremap <Plug>(emmet-move-prev) :call emmet#moveNextPrev(1)
inoremap <Plug>(emmet-move-next) :call emmet#moveNextPrev(0)
inoremap <Plug>(emmet-balance-tag-outword) :call emmet#balanceTag(-1)
inoremap <Plug>(emmet-balance-tag-inward) :call emmet#balanceTag(1)
inoremap <Plug>(emmet-update-tag) =emmet#util#closePopup()
inoremap <Plug>(emmet-expand-word) =emmet#util#closePopup()
inoremap <Plug>(emmet-expand-abbr) =emmet#util#closePopup()
inoremap <silent> <C-Tab> =UltiSnips#ListSnippets()
inoremap <silent> <Plug>(fzf-maps-i) :call fzf#vim#maps('i', 0)
inoremap <expr> <Plug>(fzf-complete-buffer-line) fzf#vim#complete#buffer_line()
inoremap <expr> <Plug>(fzf-complete-line) fzf#vim#complete#line()
inoremap <expr> <Plug>(fzf-complete-file-ag) fzf#vim#complete#path('ag -l -g ""')
inoremap <expr> <Plug>(fzf-complete-file) fzf#vim#complete#path("find . -path '*/\.*' -prune -o -type f -print -o -type l -print | sed 's:^..::'")
inoremap <expr> <Plug>(fzf-complete-path) fzf#vim#complete#path("find . -path '*/\.*' -prune -o -print | sed '1d;s:^..::'")
inoremap <expr> <Plug>(fzf-complete-word) fzf#vim#complete#word()
inoremap <silent> <expr> <Plug>delimitMateS-BS delimitMate#WithinEmptyPair() ? "\<Del>" : "\<S-BS>"
inoremap <silent> <Plug>delimitMateBS =delimitMate#BS()
xnoremap  h
nnoremap  h
snoremap <silent>  c
onoremap  h
xnoremap <silent> 	 :call UltiSnips#SaveLastVisualSelection()
snoremap <silent> 	 :call UltiSnips#ExpandSnippetOrJump()
nnoremap 	 gt
noremap <NL> j
noremap  k
noremap  l
snoremap  "_c
vmap c <Plug>(emmet-code-pretty)
vmap m <Plug>(emmet-merge-lines)
nmap A <Plug>(emmet-anchorize-summary)
nmap a <Plug>(emmet-anchorize-url)
nmap k <Plug>(emmet-remove-tag)
nmap j <Plug>(emmet-split-join-tag)
nmap / <Plug>(emmet-toggle-comment)
nmap i <Plug>(emmet-image-size)
nmap N <Plug>(emmet-move-prev)
nmap n <Plug>(emmet-move-next)
vmap D <Plug>(emmet-balance-tag-outword)
nmap D <Plug>(emmet-balance-tag-outword)
vmap d <Plug>(emmet-balance-tag-inward)
nmap d <Plug>(emmet-balance-tag-inward)
nmap u <Plug>(emmet-update-tag)
nmap ; <Plug>(emmet-expand-word)
vmap , <Plug>(emmet-expand-abbr)
nmap , <Plug>(emmet-expand-abbr)
vnoremap ,e :e =expand("%:p:h") . "/" 
nnoremap ,o :.Gbrowse
nnoremap <silent> ,  :noh
noremap ,c :bd
noremap ,w :bn
noremap ,x :bn
noremap ,q :bp
noremap ,z :bp
noremap ,p "+gP
nnoremap <silent> ,e :FZF -m
nnoremap <silent> ,b :Buffers
noremap ,te :tabe =expand("%:p:h") . "/" 
onoremap ,e :e =expand("%:p:h") . "/" 
nnoremap ,. :lcd %:p:h
nnoremap ,sc :CloseSession
nnoremap ,sd :DeleteSession
nnoremap ,ss :SaveSession 
nnoremap ,so :OpenSession 
noremap ,gr :Gremove
noremap ,gd :Gvdiff
noremap ,gb :Gblame
noremap ,gs :Gstatus
noremap ,gll :Gpull
noremap ,gsh :Gpush
noremap ,gc :Gcommit
noremap ,ga :Gwrite
noremap ,v :vsplit
noremap ,h :split
nnoremap <silent> ,sh :VimShellCreate
nnoremap <silent> ,f :Rgrep
vmap < <gv
vmap > >gv
vnoremap J :m '>+1
nnoremap K <Nop>
vnoremap K :m '<-2
nnoremap N Nzzzv
nnoremap <silent> T :tabnew
noremap XX "+x
noremap YY "+y
vmap gx <Plug>NetrwBrowseXVis
nmap gx <Plug>NetrwBrowseX
nmap gcu <Plug>Commentary<Plug>Commentary
nmap gcc <Plug>CommentaryLine
omap gc <Plug>Commentary
nmap gc <Plug>Commentary
xmap gc <Plug>Commentary
nnoremap n nzzzv
nnoremap <SNR>135_: :=v:count ? v:count : ''
nnoremap <SNR>137_: :=v:count ? v:count : ''
noremap <silent> <Plug>AirlineSelectTab1 :1tabn
noremap <silent> <Plug>AirlineSelectTab2 :2tabn
noremap <silent> <Plug>AirlineSelectTab3 :3tabn
noremap <silent> <Plug>AirlineSelectTab4 :4tabn
noremap <silent> <Plug>AirlineSelectTab5 :5tabn
noremap <silent> <Plug>AirlineSelectTab6 :6tabn
noremap <silent> <Plug>AirlineSelectTab7 :7tabn
noremap <silent> <Plug>AirlineSelectTab8 :8tabn
noremap <silent> <Plug>AirlineSelectTab9 :9tabn
noremap <silent> <Plug>AirlineSelectPrevTab gT
noremap <silent> <Plug>AirlineSelectNextTab :exe repeat(':tabn|', v:count1)
vnoremap <silent> <Plug>NetrwBrowseXVis :call netrw#BrowseXVis()
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#BrowseX(netrw#GX(),netrw#CheckIfRemote(netrw#GX()))
vnoremap <Plug>(emmet-code-pretty) :call emmet#codePretty()
vnoremap <Plug>(emmet-merge-lines) :call emmet#mergeLines()
nnoremap <Plug>(emmet-anchorize-summary) :call emmet#anchorizeURL(1)
nnoremap <Plug>(emmet-anchorize-url) :call emmet#anchorizeURL(0)
nnoremap <Plug>(emmet-remove-tag) :call emmet#removeTag()
nnoremap <Plug>(emmet-split-join-tag) :call emmet#splitJoinTag()
nnoremap <Plug>(emmet-toggle-comment) :call emmet#toggleComment()
nnoremap <Plug>(emmet-image-size) :call emmet#imageSize()
nnoremap <Plug>(emmet-move-prev-item) :call emmet#moveNextPrevItem(1)
nnoremap <Plug>(emmet-move-next-item) :call emmet#moveNextPrevItem(0)
nnoremap <Plug>(emmet-move-prev) :call emmet#moveNextPrev(1)
nnoremap <Plug>(emmet-move-next) :call emmet#moveNextPrev(0)
vnoremap <Plug>(emmet-balance-tag-outword) :call emmet#balanceTag(-2)
nnoremap <Plug>(emmet-balance-tag-outword) :call emmet#balanceTag(-1)
vnoremap <Plug>(emmet-balance-tag-inward) :call emmet#balanceTag(2)
nnoremap <Plug>(emmet-balance-tag-inward) :call emmet#balanceTag(1)
nnoremap <Plug>(emmet-update-tag) :call emmet#updateTag()
nnoremap <Plug>(emmet-expand-word) :call emmet#expandAbbr(1,"")
vnoremap <Plug>(emmet-expand-abbr) :call emmet#expandAbbr(2,"")
nnoremap <Plug>(emmet-expand-abbr) :call emmet#expandAbbr(3,"")
snoremap <silent> <Del> c
snoremap <silent> <BS> c
snoremap <silent> <C-Tab> :call UltiSnips#ListSnippets()
nnoremap <silent> <Plug>(vimshell_create) :VimShellCreate
nnoremap <silent> <Plug>(vimshell_switch) :VimShell
onoremap <silent> <Plug>(fzf-maps-o) :call fzf#vim#maps('o', 0)
xnoremap <silent> <Plug>(fzf-maps-x) :call fzf#vim#maps('x', 0)
nnoremap <silent> <Plug>(fzf-maps-n) :call fzf#vim#maps('n', 0)
nnoremap <silent> <Plug>GitGutterPreviewHunk :GitGutterPreviewHunk
nnoremap <silent> <Plug>GitGutterUndoHunk :GitGutterUndoHunk
nnoremap <silent> <Plug>GitGutterStageHunk :GitGutterStageHunk
nnoremap <silent> <expr> <Plug>GitGutterPrevHunk &diff ? '[c' : ":\execute v:count1 . 'GitGutterPrevHunk'\
nnoremap <silent> <expr> <Plug>GitGutterNextHunk &diff ? ']c' : ":\execute v:count1 . 'GitGutterNextHunk'\
xnoremap <silent> <Plug>GitGutterTextObjectOuterVisual :call gitgutter#hunk#text_object(0)
xnoremap <silent> <Plug>GitGutterTextObjectInnerVisual :call gitgutter#hunk#text_object(1)
onoremap <silent> <Plug>GitGutterTextObjectOuterPending :call gitgutter#hunk#text_object(0)
onoremap <silent> <Plug>GitGutterTextObjectInnerPending :call gitgutter#hunk#text_object(1)
nmap <silent> <Plug>CommentaryUndo :echoerr "Change your <Plug>CommentaryUndo map to <Plug>Commentary<Plug>Commentary"
nmap <silent> <F4> :TagbarToggle
nnoremap <S-Tab> gT
nnoremap <silent> <F3> :NERDTreeToggle
nnoremap <silent> <F2> :NERDTreeFind
inoremap  
inoremap <silent> 	 =UltiSnips#ExpandSnippetOrJump()
cnoremap  =expand("%:p:h") . "/" 
imap A <Plug>(emmet-anchorize-summary)
imap a <Plug>(emmet-anchorize-url)
imap k <Plug>(emmet-remove-tag)
imap j <Plug>(emmet-split-join-tag)
imap / <Plug>(emmet-toggle-comment)
imap i <Plug>(emmet-image-size)
imap N <Plug>(emmet-move-prev)
imap n <Plug>(emmet-move-next)
imap D <Plug>(emmet-balance-tag-outword)
imap d <Plug>(emmet-balance-tag-inward)
imap u <Plug>(emmet-update-tag)
imap ; <Plug>(emmet-expand-word)
imap , <Plug>(emmet-expand-abbr)
cabbr mans ManS
cabbr man Man
cnoreabbr Qall qall
cnoreabbr Q q
cnoreabbr W w
cnoreabbr WQ wq
cnoreabbr wQ wq
cnoreabbr Wa wa
cnoreabbr Wq wq
cnoreabbr Qall! qall!
cnoreabbr Q! q!
cnoreabbr W! w!
let &cpo=s:cpo_save
unlet s:cpo_save
set autoread
set background=dark
set backspace=indent,eol,start
set binary
set completeopt=menuone,longest,preview
set expandtab
set fileencodings=utf-8
set fileformats=unix,dos,mac
set guicursor=a:blinkon0
set helplang=en
set hidden
set hlsearch
set ignorecase
set incsearch
set laststatus=2
set nomodeline
set modelines=10
set mousemodel=popup
set ruler
set runtimepath=~/.vim,~/.vim/plugged/nerdtree/,~/.vim/plugged/vim-nerdtree-tabs/,~/.vim/plugged/vim-commentary/,~/.vim/plugged/vim-fugitive/,~/.vim/plugged/vim-airline/,~/.vim/plugged/vim-airline-themes/,~/.vim/plugged/vim-gitgutter/,~/.vim/plugged/grep.vim/,~/.vim/plugged/CSApprox/,~/.vim/plugged/vim-trailing-whitespace/,~/.vim/plugged/delimitMate/,~/.vim/plugged/tagbar/,~/.vim/plugged/syntastic/,~/.vim/plugged/indentLine/,~/.vim/plugged/vim-bootstrap-updater/,~/.vim/plugged/vim-polyglot/,~/.fzf/,~/.vim/plugged/fzf.vim/,~/.vim/plugged/vimproc.vim/,~/.vim/plugged/vim-misc/,~/.vim/plugged/vim-session/,~/.vim/plugged/vimshell.vim/,~/.vim/plugged/ultisnips/,~/.vim/plugged/vim-snippets/,~/.vim/plugged/yuejiu/,~/.vim/plugged/c.vim/,~/.vim/plugged/split-manpage.vim/,~/.vim/plugged/vim-css3-syntax/,~/.vim/plugged/vim-coloresque/,~/.vim/plugged/vim-haml/,~/.vim/plugged/emmet-vim/,~/.vim/plugged/vim-javascript-syntax/,~/.vim/plugged/slimv.vim/,~/.vim/plugged/vim-php-namespace/,~/.vim/plugged/jedi-vim/,~/.vim,~/.vim/plugged/nerdtree
set scrolloff=3
set shiftwidth=4
set showtabline=2
set smartcase
set statusline=%F%m%r%h%w%=(%{&ff}/%Y)\ (line\ %l/%L,\ col\ %c)\\
set noswapfile
set tabline=%!airline#extensions#tabline#get()
set tabstop=4
set title
set titlestring=%F
set visualbell
set wildignore=*/tmp/*,*.so,*.swp,*.zip,*.pyc,*.db,*.sqlite,*.o,*.obj,.git,*.rbc,*.pyc,__pycache__
set wildmode=list:longest,list:full
set window=0
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/Documents/Projects/Untitled-Game/Game
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +1 main.cpp
badd +16 Renderable.hpp
badd +18 Renderable.cpp
badd +1 ShaderProgram.cpp
badd +1 ShaderProgram.hpp
badd +1 VAO.cpp
badd +13 VAO.hpp
badd +1 Camera.cpp
badd +1 Camera.hpp
badd +1 Window.cpp
badd +1 Window.hpp
badd +1 simple.fs
badd +1 simple..vs
badd +13 simple.vs
badd +0 OBJLoader.cpp
badd +0 OBJLoader.hpp
argglobal
silent! argdel *
$argadd main.cpp
edit main.cpp
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winminheight=1 winheight=1 winminwidth=1 winwidth=1
argglobal
let s:cpo_save=&cpo
set cpo&vim
imap <buffer> <silent> <M-F9> :call C_Compile()
imap <buffer> <silent> <F9> :call C_Link()
imap <buffer> <silent> <C-F9> :call C_Run()
imap <buffer> <silent> <S-F9> :call C_Arguments()
imap <buffer> <S-Tab> <Plug>delimitMateS-Tab
imap <buffer> <S-BS> <Plug>delimitMateS-BS
imap <buffer> <BS> <Plug>delimitMateBS
nmap <buffer> <silent> <NL> i=C_JumpCtrlJ()
nmap <buffer> ,hp <Plug>GitGutterPreviewHunk
nmap <buffer> ,hu <Plug>GitGutterUndoHunk
nmap <buffer> ,hs <Plug>GitGutterStageHunk
vnoremap <buffer> /* s/*  */<Left><Left><Left>p
nmap <buffer> [c <Plug>GitGutterPrevHunk
onoremap <buffer> <silent> \cl :call C_EndOfLineComment()
nnoremap <buffer> <silent> \cl :call C_EndOfLineComment()
vnoremap <buffer> <silent> \cl :call C_EndOfLineComment()
nnoremap <buffer> <silent> \cj :call C_AdjustLineEndComm()
vnoremap <buffer> <silent> \cj :call C_AdjustLineEndComm()
noremap <buffer> <silent> \cs :call C_GetLineEndCommCol()
onoremap <buffer> <silent> \c* :call C_CodeToCommentC()
nnoremap <buffer> <silent> \c* :call C_CodeToCommentC()
vnoremap <buffer> <silent> \c* :call C_CodeToCommentC()
onoremap <buffer> <silent> \cc :call C_CodeToCommentCpp()
nnoremap <buffer> <silent> \cc :call C_CodeToCommentCpp()
vnoremap <buffer> <silent> \cc :call C_CodeToCommentCpp()
onoremap <buffer> <silent> \co :call C_CommentToCode()
nnoremap <buffer> <silent> \co :call C_CommentToCode()
vnoremap <buffer> <silent> \co :call C_CommentToCode()
noremap <buffer> <silent> \cfr :call C_InsertTemplate("comment.frame")
noremap <buffer> <silent> \cfu :call C_InsertTemplate("comment.function")
noremap <buffer> <silent> \cme :call C_InsertTemplate("comment.method")
noremap <buffer> <silent> \ccl :call C_InsertTemplate("comment.class")
noremap <buffer> <silent> \cfdi :call C_InsertTemplate("comment.file-description")
noremap <buffer> <silent> \cfdh :call C_InsertTemplate("comment.file-description-header")
onoremap <buffer> <silent> \cd :call C_InsertDateAndTime('d')
nnoremap <buffer> <silent> \cd :call C_InsertDateAndTime('d')
vnoremap <buffer> <silent> \cd s:call C_InsertDateAndTime('d')
onoremap <buffer> <silent> \ct :call C_InsertDateAndTime('dt')
nnoremap <buffer> <silent> \ct :call C_InsertDateAndTime('dt')
vnoremap <buffer> <silent> \ct s:call C_InsertDateAndTime('dt')
onoremap <buffer> <silent> \cx :call C_CommentToggle( )
nnoremap <buffer> <silent> \cx :call C_CommentToggle( )
vnoremap <buffer> <silent> \cx :call C_CommentToggle( )
noremap <buffer> \ccs :CFileSection 
noremap <buffer> \chs :HFileSection 
noremap <buffer> \ckc :KeywordComment 
noremap <buffer> \csc :SpecialComment 
onoremap <buffer> <silent> \sd :call C_InsertTemplate("statements.do-while")
nnoremap <buffer> <silent> \sd :call C_InsertTemplate("statements.do-while")
vnoremap <buffer> <silent> \sd :call C_InsertTemplate("statements.do-while", "v")
noremap <buffer> <silent> \sf :call C_InsertTemplate("statements.for")
onoremap <buffer> <silent> \sfo :call C_InsertTemplate("statements.for-block")
nnoremap <buffer> <silent> \sfo :call C_InsertTemplate("statements.for-block")
vnoremap <buffer> <silent> \sfo :call C_InsertTemplate("statements.for-block", "v")
noremap <buffer> <silent> \si :call C_InsertTemplate("statements.if")
onoremap <buffer> <silent> \sif :call C_InsertTemplate("statements.if-block")
nnoremap <buffer> <silent> \sif :call C_InsertTemplate("statements.if-block")
vnoremap <buffer> <silent> \sif :call C_InsertTemplate("statements.if-block", "v")
onoremap <buffer> <silent> \sie :call C_InsertTemplate("statements.if-else")
nnoremap <buffer> <silent> \sie :call C_InsertTemplate("statements.if-else")
vnoremap <buffer> <silent> \sie :call C_InsertTemplate("statements.if-else", "v")
onoremap <buffer> <silent> \sife :call C_InsertTemplate("statements.if-block-else")
nnoremap <buffer> <silent> \sife :call C_InsertTemplate("statements.if-block-else")
vnoremap <buffer> <silent> \sife :call C_InsertTemplate("statements.if-block-else", "v")
onoremap <buffer> <silent> \se :call C_InsertTemplate("statements.else-block")
nnoremap <buffer> <silent> \se :call C_InsertTemplate("statements.else-block")
vnoremap <buffer> <silent> \se :call C_InsertTemplate("statements.else-block", "v")
noremap <buffer> <silent> \sw :call C_InsertTemplate("statements.while")
onoremap <buffer> <silent> \swh :call C_InsertTemplate("statements.while-block")
nnoremap <buffer> <silent> \swh :call C_InsertTemplate("statements.while-block")
vnoremap <buffer> <silent> \swh :call C_InsertTemplate("statements.while-block", "v")
onoremap <buffer> <silent> \ss :call C_InsertTemplate("statements.switch")
nnoremap <buffer> <silent> \ss :call C_InsertTemplate("statements.switch")
vnoremap <buffer> <silent> \ss :call C_InsertTemplate("statements.switch", "v")
noremap <buffer> <silent> \sc :call C_InsertTemplate("statements.case")
onoremap <buffer> <silent> \s{ :call C_InsertTemplate("statements.block")
nnoremap <buffer> <silent> \s{ :call C_InsertTemplate("statements.block")
vnoremap <buffer> <silent> \s{ :call C_InsertTemplate("statements.block", "v")
onoremap <buffer> <silent> \sb :call C_InsertTemplate("statements.block")
nnoremap <buffer> <silent> \sb :call C_InsertTemplate("statements.block")
vnoremap <buffer> <silent> \sb :call C_InsertTemplate("statements.block", "v")
noremap <buffer> \ps :IncludeStdLibrary 
noremap <buffer> \pc :IncludeC99Library 
noremap <buffer> \+ps :IncludeCppLibrary 
noremap <buffer> \+pc :IncludeCppCLibrary 
noremap <buffer> <silent> \p< :call C_InsertTemplate("preprocessor.include-global")
noremap <buffer> <silent> \p" :call C_InsertTemplate("preprocessor.include-local")
noremap <buffer> <silent> \pd :call C_InsertTemplate("preprocessor.define")
noremap <buffer> <silent> \pu :call C_InsertTemplate("preprocessor.undefine")
onoremap <buffer> <silent> \pif :call C_InsertTemplate("preprocessor.if-endif")
nnoremap <buffer> <silent> \pif :call C_InsertTemplate("preprocessor.if-endif")
onoremap <buffer> <silent> \pie :call C_InsertTemplate("preprocessor.if-else-endif")
nnoremap <buffer> <silent> \pie :call C_InsertTemplate("preprocessor.if-else-endif")
onoremap <buffer> <silent> \pid :call C_InsertTemplate("preprocessor.ifdef-else-endif")
nnoremap <buffer> <silent> \pid :call C_InsertTemplate("preprocessor.ifdef-else-endif")
onoremap <buffer> <silent> \pin :call C_InsertTemplate("preprocessor.ifndef-else-endif")
nnoremap <buffer> <silent> \pin :call C_InsertTemplate("preprocessor.ifndef-else-endif")
onoremap <buffer> <silent> \pind :call C_InsertTemplate("preprocessor.ifndef-def-endif")
nnoremap <buffer> <silent> \pind :call C_InsertTemplate("preprocessor.ifndef-def-endif")
vnoremap <buffer> <silent> \pif :call C_InsertTemplate("preprocessor.if-endif", "v")
vnoremap <buffer> <silent> \pie :call C_InsertTemplate("preprocessor.if-else-endif", "v")
vnoremap <buffer> <silent> \pid :call C_InsertTemplate("preprocessor.ifdef-else-endif", "v")
vnoremap <buffer> <silent> \pin :call C_InsertTemplate("preprocessor.ifndef-else-endif", "v")
vnoremap <buffer> <silent> \pind :call C_InsertTemplate("preprocessor.ifndef-def-endif", "v")
onoremap <buffer> <silent> \pi0 :call C_PPIf0("a")
nnoremap <buffer> <silent> \pi0 :call C_PPIf0("a")
vnoremap <buffer> <silent> \pi0 :call C_PPIf0("v")
noremap <buffer> <silent> \pr0 :call C_PPIf0Remove()
noremap <buffer> <silent> \pe :call C_InsertTemplate("preprocessor.error")
noremap <buffer> <silent> \pl :call C_InsertTemplate("preprocessor.line")
noremap <buffer> <silent> \pp :call C_InsertTemplate("preprocessor.pragma")
onoremap <buffer> <silent> \if :call C_InsertTemplate("idioms.function")
nnoremap <buffer> <silent> \if :call C_InsertTemplate("idioms.function")
vnoremap <buffer> <silent> \if :call C_InsertTemplate("idioms.function", "v")
onoremap <buffer> <silent> \isf :call C_InsertTemplate("idioms.function-static")
nnoremap <buffer> <silent> \isf :call C_InsertTemplate("idioms.function-static")
vnoremap <buffer> <silent> \isf :call C_InsertTemplate("idioms.function-static", "v")
onoremap <buffer> <silent> \im :call C_InsertTemplate("idioms.main")
nnoremap <buffer> <silent> \im :call C_InsertTemplate("idioms.main")
vnoremap <buffer> <silent> \im :call C_InsertTemplate("idioms.main", "v")
onoremap <buffer> <silent> \i0 :call C_CodeFor("up"  )
nnoremap <buffer> <silent> \i0 :call C_CodeFor("up"  )
vnoremap <buffer> <silent> \i0 :call C_CodeFor("up"  )
onoremap <buffer> <silent> \in :call C_CodeFor("down")
nnoremap <buffer> <silent> \in :call C_CodeFor("down")
vnoremap <buffer> <silent> \in :call C_CodeFor("down")
onoremap <buffer> <silent> \ie :call C_InsertTemplate("idioms.enum")
nnoremap <buffer> <silent> \ie :call C_InsertTemplate("idioms.enum")
vnoremap <buffer> <silent> \ie :call C_InsertTemplate("idioms.enum"  , "v")
onoremap <buffer> <silent> \is :call C_InsertTemplate("idioms.struct")
nnoremap <buffer> <silent> \is :call C_InsertTemplate("idioms.struct")
vnoremap <buffer> <silent> \is :call C_InsertTemplate("idioms.struct", "v")
onoremap <buffer> <silent> \iu :call C_InsertTemplate("idioms.union")
nnoremap <buffer> <silent> \iu :call C_InsertTemplate("idioms.union")
vnoremap <buffer> <silent> \iu :call C_InsertTemplate("idioms.union" , "v")
noremap <buffer> <silent> \ip :call C_InsertTemplate("idioms.printf")
noremap <buffer> <silent> \isc :call C_InsertTemplate("idioms.scanf")
noremap <buffer> <silent> \ica :call C_InsertTemplate("idioms.calloc")
noremap <buffer> <silent> \ima :call C_InsertTemplate("idioms.malloc")
noremap <buffer> <silent> \ire :call C_InsertTemplate("idioms.realloc")
onoremap <buffer> <silent> \isi :call C_InsertTemplate("idioms.sizeof")
nnoremap <buffer> <silent> \isi :call C_InsertTemplate("idioms.sizeof")
vnoremap <buffer> <silent> \isi :call C_InsertTemplate("idioms.sizeof", "v")
onoremap <buffer> <silent> \ias :call C_InsertTemplate("idioms.assert")
nnoremap <buffer> <silent> \ias :call C_InsertTemplate("idioms.assert")
vnoremap <buffer> <silent> \ias :call C_InsertTemplate("idioms.assert", "v")
onoremap <buffer> <silent> \ii :call C_InsertTemplate("idioms.open-input-file")
nnoremap <buffer> <silent> \ii :call C_InsertTemplate("idioms.open-input-file")
vnoremap <buffer> <silent> \ii :call C_InsertTemplate("idioms.open-input-file", "v")
onoremap <buffer> <silent> \io :call C_InsertTemplate("idioms.open-output-file")
nnoremap <buffer> <silent> \io :call C_InsertTemplate("idioms.open-output-file")
vnoremap <buffer> <silent> \io :call C_InsertTemplate("idioms.open-output-file", "v")
noremap <buffer> <silent> \ifs :call C_InsertTemplate("idioms.fscanf")
noremap <buffer> <silent> \ifp :call C_InsertTemplate("idioms.fprintf")
noremap <buffer> <silent> \nr :call C_CodeSnippet("r")
onoremap <buffer> <silent> \nw :call C_CodeSnippet("w")
nnoremap <buffer> <silent> \nw :call C_CodeSnippet("w")
vnoremap <buffer> <silent> \nw :call C_CodeSnippet("wv")
noremap <buffer> <silent> \ne :call C_CodeSnippet("e")
onoremap <buffer> <silent> \np :call C_ProtoPick("function")
nnoremap <buffer> <silent> \np :call C_ProtoPick("function")
vnoremap <buffer> <silent> \np :call C_ProtoPick("function")
onoremap <buffer> <silent> \nf :call C_ProtoPick("function")
nnoremap <buffer> <silent> \nf :call C_ProtoPick("function")
vnoremap <buffer> <silent> \nf :call C_ProtoPick("function")
onoremap <buffer> <silent> \nm :call C_ProtoPick("method")
nnoremap <buffer> <silent> \nm :call C_ProtoPick("method")
vnoremap <buffer> <silent> \nm :call C_ProtoPick("method")
noremap <buffer> <silent> \ni :call C_ProtoInsert()
noremap <buffer> <silent> \nc :call C_ProtoClear()
noremap <buffer> <silent> \ns :call C_ProtoShow()
noremap <buffer> <silent> \ntl :call C_BrowseTemplateFiles("Local")
noremap <buffer> <silent> \ntr :call C_RereadTemplates()
noremap <buffer> \nts :CStyle 
noremap <buffer> <silent> \+" :call C_InsertTemplate("cpp.cout-operator")
noremap <buffer> <silent> \+co :call C_InsertTemplate("cpp.cout")
noremap <buffer> <silent> \+c :call C_InsertTemplate("cpp.class-definition")
noremap <buffer> <silent> \+cn :call C_InsertTemplate("cpp.class-using-new-definition")
noremap <buffer> <silent> \+ci :call C_InsertTemplate("cpp.class-implementation")
noremap <buffer> <silent> \+cni :call C_InsertTemplate("cpp.class-using-new-implementation")
noremap <buffer> <silent> \+mi :call C_InsertTemplate("cpp.method-implementation")
noremap <buffer> <silent> \+ai :call C_InsertTemplate("cpp.accessor-implementation")
noremap <buffer> <silent> \+tc :call C_InsertTemplate("cpp.template-class-definition")
noremap <buffer> <silent> \+tcn :call C_InsertTemplate("cpp.template-class-using-new-definition")
noremap <buffer> <silent> \+tci :call C_InsertTemplate("cpp.template-class-implementation")
noremap <buffer> <silent> \+tcni :call C_InsertTemplate("cpp.template-class-using-new-implementation")
noremap <buffer> <silent> \+tmi :call C_InsertTemplate("cpp.template-method-implementation")
noremap <buffer> <silent> \+tai :call C_InsertTemplate("cpp.template-accessor-implementation")
noremap <buffer> <silent> \+tf :call C_InsertTemplate("cpp.template-function")
noremap <buffer> <silent> \+ec :call C_InsertTemplate("cpp.error-class")
onoremap <buffer> <silent> \+tr :call C_InsertTemplate("cpp.try-catch")
nnoremap <buffer> <silent> \+tr :call C_InsertTemplate("cpp.try-catch")
vnoremap <buffer> <silent> \+tr :call C_InsertTemplate("cpp.try-catch", "v")
onoremap <buffer> <silent> \+ca :call C_InsertTemplate("cpp.catch")
nnoremap <buffer> <silent> \+ca :call C_InsertTemplate("cpp.catch")
vnoremap <buffer> <silent> \+ca :call C_InsertTemplate("cpp.catch", "v")
onoremap <buffer> <silent> \+c. :call C_InsertTemplate("cpp.catch-points")
nnoremap <buffer> <silent> \+c. :call C_InsertTemplate("cpp.catch-points")
vnoremap <buffer> <silent> \+c. :call C_InsertTemplate("cpp.catch-points", "v")
map <buffer> <silent> \rc :call C_Compile()
map <buffer> <silent> \rl :call C_Link()
map <buffer> <silent> \rr :call C_Run()
map <buffer> <silent> \ra :call C_Arguments()
map <buffer> <silent> \rm :call C_Make()
map <buffer> <silent> \rcm :call C_ChooseMakefile()
map <buffer> <silent> \rmc :call C_MakeClean()
map <buffer> <silent> \rme :call C_MakeExeToRun()
map <buffer> <silent> \rma :call C_MakeArguments()
map <buffer> <silent> \rp :call C_SplintCheck()
map <buffer> <silent> \rpa :call C_SplintArguments()
map <buffer> <silent> \rd :call C_Indent()
omap <buffer> <silent> \rh :call C_Hardcopy()
nmap <buffer> <silent> \rh :call C_Hardcopy()
map <buffer> <silent> \rs :call C_Settings()
vmap <buffer> <silent> \rh :call C_Hardcopy()
map <buffer> <silent> \rx :call C_XtermSize()
map <buffer> <silent> \ro :call C_Toggle_Gvim_Xterm()
map <buffer> <silent> \hp :call C_HelpCsupport()
map <buffer> <silent> \hm :call C_Help("m")
nmap <buffer> ]c <Plug>GitGutterNextHunk
xmap <buffer> ac <Plug>GitGutterTextObjectOuterVisual
omap <buffer> ac <Plug>GitGutterTextObjectOuterPending
xmap <buffer> ic <Plug>GitGutterTextObjectInnerVisual
omap <buffer> ic <Plug>GitGutterTextObjectInnerPending
vnoremap <buffer> {
map <buffer> <silent> <M-F9> :call C_Compile()
map <buffer> <silent> <F9> :call C_Link()
map <buffer> <silent> <C-F9> :call C_Run()
map <buffer> <silent> <S-F9> :call C_Arguments()
imap <buffer> <silent> g <Plug>delimitMateJumpMany
imap <buffer>  <Plug>delimitMateBS
imap <buffer> <silent> <NL> =C_JumpCtrlJ()
imap <buffer> " <Plug>delimitMate"
imap <buffer> ' <Plug>delimitMate'
imap <buffer> ( <Plug>delimitMate(
imap <buffer> ) <Plug>delimitMate)
inoremap <buffer> /* /*  */<Left><Left><Left>
inoremap <buffer> /*
imap <buffer> [ <Plug>delimitMate[
inoremap <buffer> <silent> \cl :call C_EndOfLineComment()
inoremap <buffer> <silent> \cj :call C_AdjustLineEndComm()
inoremap <buffer> <silent> \cfr :call C_InsertTemplate("comment.frame")
inoremap <buffer> <silent> \cfu :call C_InsertTemplate("comment.function")
inoremap <buffer> <silent> \cme :call C_InsertTemplate("comment.method")
inoremap <buffer> <silent> \ccl :call C_InsertTemplate("comment.class")
inoremap <buffer> <silent> \cfdi :call C_InsertTemplate("comment.file-description")
inoremap <buffer> <silent> \cfdh :call C_InsertTemplate("comment.file-description-header")
inoremap <buffer> <silent> \cd :call C_InsertDateAndTime('d')
inoremap <buffer> <silent> \ct :call C_InsertDateAndTime('dt')
inoremap <buffer> <silent> \cx :call C_CommentToggle( )
inoremap <buffer> \ccs :CFileSection 
inoremap <buffer> \chs :HFileSection 
inoremap <buffer> \ckc :KeywordComment 
inoremap <buffer> \csc :SpecialComment 
inoremap <buffer> <silent> \sd :call C_InsertTemplate("statements.do-while")
inoremap <buffer> <silent> \sf :call C_InsertTemplate("statements.for")
inoremap <buffer> <silent> \sfo :call C_InsertTemplate("statements.for-block")
inoremap <buffer> <silent> \si :call C_InsertTemplate("statements.if")
inoremap <buffer> <silent> \sif :call C_InsertTemplate("statements.if-block")
inoremap <buffer> <silent> \sie :call C_InsertTemplate("statements.if-else")
inoremap <buffer> <silent> \sife :call C_InsertTemplate("statements.if-block-else")
inoremap <buffer> <silent> \se :call C_InsertTemplate("statements.else-block")
inoremap <buffer> <silent> \sw :call C_InsertTemplate("statements.while")
inoremap <buffer> <silent> \swh :call C_InsertTemplate("statements.while-block")
inoremap <buffer> <silent> \ss :call C_InsertTemplate("statements.switch")
inoremap <buffer> <silent> \sc :call C_InsertTemplate("statements.case")
inoremap <buffer> <silent> \s{ :call C_InsertTemplate("statements.block")
inoremap <buffer> <silent> \sb :call C_InsertTemplate("statements.block")
inoremap <buffer> \ps :IncludeStdLibrary 
inoremap <buffer> \pc :IncludeC99Library 
inoremap <buffer> \+ps :IncludeCppLibrary 
inoremap <buffer> \+pc :IncludeCppC9Library 
inoremap <buffer> <silent> \p< :call C_InsertTemplate("preprocessor.include-global")
inoremap <buffer> <silent> \p" :call C_InsertTemplate("preprocessor.include-local")
inoremap <buffer> <silent> \pd :call C_InsertTemplate("preprocessor.define")
inoremap <buffer> <silent> \pu :call C_InsertTemplate("preprocessor.undefine")
inoremap <buffer> <silent> \pif :call C_InsertTemplate("preprocessor.if-endif")
inoremap <buffer> <silent> \pie :call C_InsertTemplate("preprocessor.if-else-endif")
inoremap <buffer> <silent> \pid :call C_InsertTemplate("preprocessor.ifdef-else-endif")
inoremap <buffer> <silent> \pin :call C_InsertTemplate("preprocessor.ifndef-else-endif")
inoremap <buffer> <silent> \pind :call C_InsertTemplate("preprocessor.ifndef-def-endif")
inoremap <buffer> <silent> \pi0 :call C_PPIf0("a")
inoremap <buffer> <silent> \pr0 :call C_PPIf0Remove()
inoremap <buffer> <silent> \pe :call C_InsertTemplate("preprocessor.error")
inoremap <buffer> <silent> \pl :call C_InsertTemplate("preprocessor.line")
inoremap <buffer> <silent> \pp :call C_InsertTemplate("preprocessor.pragma")
inoremap <buffer> <silent> \if :call C_InsertTemplate("idioms.function")
inoremap <buffer> <silent> \isf :call C_InsertTemplate("idioms.function-static")
inoremap <buffer> <silent> \im :call C_InsertTemplate("idioms.main")
inoremap <buffer> <silent> \i0 :call C_CodeFor("up"  )
inoremap <buffer> <silent> \in :call C_CodeFor("down")
inoremap <buffer> <silent> \ie :call C_InsertTemplate("idioms.enum")
inoremap <buffer> <silent> \is :call C_InsertTemplate("idioms.struct")
inoremap <buffer> <silent> \iu :call C_InsertTemplate("idioms.union")
inoremap <buffer> <silent> \ip :call C_InsertTemplate("idioms.printf")
inoremap <buffer> <silent> \isc :call C_InsertTemplate("idioms.scanf")
inoremap <buffer> <silent> \ica :call C_InsertTemplate("idioms.calloc")
inoremap <buffer> <silent> \ima :call C_InsertTemplate("idioms.malloc")
inoremap <buffer> <silent> \ire :call C_InsertTemplate("idioms.realloc")
inoremap <buffer> <silent> \isi :call C_InsertTemplate("idioms.sizeof")
inoremap <buffer> <silent> \ias :call C_InsertTemplate("idioms.assert")
inoremap <buffer> <silent> \ii :call C_InsertTemplate("idioms.open-input-file")
inoremap <buffer> <silent> \io :call C_InsertTemplate("idioms.open-output-file")
inoremap <buffer> <silent> \ifs :call C_InsertTemplate("idioms.fscanf")
inoremap <buffer> <silent> \ifp :call C_InsertTemplate("idioms.fprintf")
inoremap <buffer> <silent> \nr :call C_CodeSnippet("r")
inoremap <buffer> <silent> \nw :call C_CodeSnippet("w")
inoremap <buffer> <silent> \ne :call C_CodeSnippet("e")
inoremap <buffer> <silent> \np :call C_ProtoPick("function")
inoremap <buffer> <silent> \nf :call C_ProtoPick("function")
inoremap <buffer> <silent> \nm :call C_ProtoPick("method")
inoremap <buffer> <silent> \ni :call C_ProtoInsert()
inoremap <buffer> <silent> \nc :call C_ProtoClear()
inoremap <buffer> <silent> \ns :call C_ProtoShow()
inoremap <buffer> <silent> \ntl :call C_BrowseTemplateFiles("Local")
inoremap <buffer> <silent> \ntr :call C_RereadTemplates()
inoremap <buffer> \nts :CStyle 
inoremap <buffer> <silent> \+" :call C_InsertTemplate("cpp.cout-operator")
inoremap <buffer> <silent> \+co :call C_InsertTemplate("cpp.cout")
inoremap <buffer> <silent> \+c :call C_InsertTemplate("cpp.class-definition")
inoremap <buffer> <silent> \+cn :call C_InsertTemplate("cpp.class-using-new-definition")
inoremap <buffer> <silent> \+ci :call C_InsertTemplate("cpp.class-implementation")
inoremap <buffer> <silent> \+cni :call C_InsertTemplate("cpp.class-using-new-implementation")
inoremap <buffer> <silent> \+mi :call C_InsertTemplate("cpp.method-implementation")
inoremap <buffer> <silent> \+ai :call C_InsertTemplate("cpp.accessor-implementation")
inoremap <buffer> <silent> \+tc :call C_InsertTemplate("cpp.template-class-definition")
inoremap <buffer> <silent> \+tcn :call C_InsertTemplate("cpp.template-class-using-new-definition")
inoremap <buffer> <silent> \+tci :call C_InsertTemplate("cpp.template-class-implementation")
inoremap <buffer> <silent> \+tcni :call C_InsertTemplate("cpp.template-class-using-new-implementation")
inoremap <buffer> <silent> \+tmi :call C_InsertTemplate("cpp.template-method-implementation")
inoremap <buffer> <silent> \+tai :call C_InsertTemplate("cpp.template-accessor-implementation")
inoremap <buffer> <silent> \+tf :call C_InsertTemplate("cpp.template-function")
inoremap <buffer> <silent> \+ec :call C_InsertTemplate("cpp.error-class")
inoremap <buffer> <silent> \+tr :call C_InsertTemplate("cpp.try-catch")
inoremap <buffer> <silent> \+ca :call C_InsertTemplate("cpp.catch")
inoremap <buffer> <silent> \+c. :call C_InsertTemplate("cpp.catch-points")
imap <buffer> <silent> \rc :call C_Compile()
imap <buffer> <silent> \rl :call C_Link()
imap <buffer> <silent> \rr :call C_Run()
imap <buffer> <silent> \ra :call C_Arguments()
imap <buffer> <silent> \rm :call C_Make()
imap <buffer> <silent> \rmc :call C_MakeClean()
imap <buffer> <silent> \rme :call C_MakeExeToRun()
imap <buffer> <silent> \rma :call C_MakeArguments()
imap <buffer> <silent> \rp :call C_SplintCheck()
imap <buffer> <silent> \rpa :call C_SplintArguments()
imap <buffer> <silent> \rd :call C_Indent()
imap <buffer> <silent> \rh :call C_Hardcopy()
imap <buffer> <silent> \rs :call C_Settings()
imap <buffer> <silent> \rx :call C_XtermSize()
imap <buffer> <silent> \ro :call C_Toggle_Gvim_Xterm()
imap <buffer> <silent> \hp :call C_HelpCsupport()
imap <buffer> <silent> \hm :call C_Help("m")
imap <buffer> ] <Plug>delimitMate]
imap <buffer> ` <Plug>delimitMate`
inoremap <buffer> {
imap <buffer> { <Plug>delimitMate{
imap <buffer> } <Plug>delimitMate}
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal noautoindent
setlocal backupcopy=
setlocal binary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal cindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=sO:*\ -,mO:*\ \ ,exO:*/,s1:/*,mb:*,ex:*/,://
setlocal commentstring=/*%s*/
setlocal complete=.,w,b,u,t,i
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=~/.vim/plugged/c.vim/c-support/wordlists/c-c++-keywords.list,~/.vim/plugged/c.vim/c-support/wordlists/k+r.list,~/.vim/plugged/c.vim/c-support/wordlists/stl_index.list
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'cpp'
setlocal filetype=cpp
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=-1
setlocal include=
setlocal includeexpr=
setlocal indentexpr=
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=ccomplete#Complete
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal noscrollbind
setlocal shiftwidth=4
setlocal noshortname
setlocal signcolumn=auto
setlocal nosmartindent
setlocal softtabstop=0
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=%!airline#statusline(1)
setlocal suffixesadd=
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != 'cpp'
setlocal syntax=cpp
endif
setlocal tabstop=4
setlocal tagcase=
setlocal tags=
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal undolevels=-123456
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 29 - ((27 * winheight(0) + 25) / 50)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
29
normal! 021|
tabedit OBJLoader.hpp
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winminheight=1 winheight=1 winminwidth=1 winwidth=1
exe 'vert 1resize ' . ((&columns * 86 + 89) / 179)
exe 'vert 2resize ' . ((&columns * 92 + 89) / 179)
argglobal
let s:cpo_save=&cpo
set cpo&vim
imap <buffer> <S-Tab> <Plug>delimitMateS-Tab
imap <buffer> <S-BS> <Plug>delimitMateS-BS
imap <buffer> <BS> <Plug>delimitMateBS
nmap <buffer> ,hp <Plug>GitGutterPreviewHunk
nmap <buffer> ,hu <Plug>GitGutterUndoHunk
nmap <buffer> ,hs <Plug>GitGutterStageHunk
nmap <buffer> [c <Plug>GitGutterPrevHunk
nmap <buffer> ]c <Plug>GitGutterNextHunk
xmap <buffer> ac <Plug>GitGutterTextObjectOuterVisual
omap <buffer> ac <Plug>GitGutterTextObjectOuterPending
xmap <buffer> ic <Plug>GitGutterTextObjectInnerVisual
omap <buffer> ic <Plug>GitGutterTextObjectInnerPending
imap <buffer> <silent> g <Plug>delimitMateJumpMany
imap <buffer>  <Plug>delimitMateBS
imap <buffer> " <Plug>delimitMate"
imap <buffer> ' <Plug>delimitMate'
imap <buffer> ( <Plug>delimitMate(
imap <buffer> ) <Plug>delimitMate)
imap <buffer> [ <Plug>delimitMate[
imap <buffer> ] <Plug>delimitMate]
imap <buffer> ` <Plug>delimitMate`
imap <buffer> { <Plug>delimitMate{
imap <buffer> } <Plug>delimitMate}
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal noautoindent
setlocal backupcopy=
setlocal binary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=s1:/*,mb:*,ex:*/,://,b:#,:%,:XCOMM,n:>,fb:-
setlocal commentstring=/*%s*/
setlocal complete=.,w,b,u,t,i
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'cpp'
setlocal filetype=cpp
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=tcq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=-1
setlocal include=
setlocal includeexpr=
setlocal indentexpr=
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal nomodeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal noscrollbind
setlocal shiftwidth=4
setlocal noshortname
setlocal signcolumn=auto
setlocal nosmartindent
setlocal softtabstop=0
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=%!airline#statusline(1)
setlocal suffixesadd=
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != 'cpp'
setlocal syntax=cpp
endif
setlocal tabstop=4
setlocal tagcase=
setlocal tags=
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal undolevels=-123456
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 14 - ((13 * winheight(0) + 25) / 50)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
14
normal! 034|
wincmd w
argglobal
if bufexists('OBJLoader.cpp') | buffer OBJLoader.cpp | else | edit OBJLoader.cpp | endif
let s:cpo_save=&cpo
set cpo&vim
imap <buffer> <S-Tab> <Plug>delimitMateS-Tab
imap <buffer> <S-BS> <Plug>delimitMateS-BS
imap <buffer> <BS> <Plug>delimitMateBS
nmap <buffer> ,hp <Plug>GitGutterPreviewHunk
nmap <buffer> ,hu <Plug>GitGutterUndoHunk
nmap <buffer> ,hs <Plug>GitGutterStageHunk
nmap <buffer> [c <Plug>GitGutterPrevHunk
nmap <buffer> ]c <Plug>GitGutterNextHunk
xmap <buffer> ac <Plug>GitGutterTextObjectOuterVisual
omap <buffer> ac <Plug>GitGutterTextObjectOuterPending
xmap <buffer> ic <Plug>GitGutterTextObjectInnerVisual
omap <buffer> ic <Plug>GitGutterTextObjectInnerPending
imap <buffer> <silent> g <Plug>delimitMateJumpMany
imap <buffer>  <Plug>delimitMateBS
imap <buffer> " <Plug>delimitMate"
imap <buffer> ' <Plug>delimitMate'
imap <buffer> ( <Plug>delimitMate(
imap <buffer> ) <Plug>delimitMate)
imap <buffer> [ <Plug>delimitMate[
imap <buffer> ] <Plug>delimitMate]
imap <buffer> ` <Plug>delimitMate`
imap <buffer> { <Plug>delimitMate{
imap <buffer> } <Plug>delimitMate}
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal noautoindent
setlocal backupcopy=
setlocal binary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=s1:/*,mb:*,ex:*/,://,b:#,:%,:XCOMM,n:>,fb:-
setlocal commentstring=/*%s*/
setlocal complete=.,w,b,u,t,i
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'cpp'
setlocal filetype=cpp
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=tcq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=-1
setlocal include=
setlocal includeexpr=
setlocal indentexpr=
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal nomodeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal noscrollbind
setlocal shiftwidth=4
setlocal noshortname
setlocal signcolumn=auto
setlocal nosmartindent
setlocal softtabstop=0
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=%!airline#statusline(2)
setlocal suffixesadd=
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != 'cpp'
setlocal syntax=cpp
endif
setlocal tabstop=4
setlocal tagcase=
setlocal tags=
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal undolevels=-123456
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 85 - ((49 * winheight(0) + 25) / 50)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
85
normal! 0
wincmd w
exe 'vert 1resize ' . ((&columns * 86 + 89) / 179)
exe 'vert 2resize ' . ((&columns * 92 + 89) / 179)
tabedit Renderable.hpp
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winminheight=1 winheight=1 winminwidth=1 winwidth=1
exe 'vert 1resize ' . ((&columns * 89 + 89) / 179)
exe 'vert 2resize ' . ((&columns * 89 + 89) / 179)
argglobal
let s:cpo_save=&cpo
set cpo&vim
imap <buffer> <silent> <M-F9> :call C_Compile()
imap <buffer> <silent> <F9> :call C_Link()
imap <buffer> <silent> <C-F9> :call C_Run()
imap <buffer> <silent> <S-F9> :call C_Arguments()
imap <buffer> <S-Tab> <Plug>delimitMateS-Tab
imap <buffer> <S-BS> <Plug>delimitMateS-BS
imap <buffer> <BS> <Plug>delimitMateBS
nmap <buffer> <silent> <NL> i=C_JumpCtrlJ()
nmap <buffer> ,hp <Plug>GitGutterPreviewHunk
nmap <buffer> ,hu <Plug>GitGutterUndoHunk
nmap <buffer> ,hs <Plug>GitGutterStageHunk
vnoremap <buffer> /* s/*  */<Left><Left><Left>p
nmap <buffer> [c <Plug>GitGutterPrevHunk
onoremap <buffer> <silent> \cl :call C_EndOfLineComment()
nnoremap <buffer> <silent> \cl :call C_EndOfLineComment()
vnoremap <buffer> <silent> \cl :call C_EndOfLineComment()
nnoremap <buffer> <silent> \cj :call C_AdjustLineEndComm()
vnoremap <buffer> <silent> \cj :call C_AdjustLineEndComm()
noremap <buffer> <silent> \cs :call C_GetLineEndCommCol()
onoremap <buffer> <silent> \c* :call C_CodeToCommentC()
nnoremap <buffer> <silent> \c* :call C_CodeToCommentC()
vnoremap <buffer> <silent> \c* :call C_CodeToCommentC()
onoremap <buffer> <silent> \cc :call C_CodeToCommentCpp()
nnoremap <buffer> <silent> \cc :call C_CodeToCommentCpp()
vnoremap <buffer> <silent> \cc :call C_CodeToCommentCpp()
onoremap <buffer> <silent> \co :call C_CommentToCode()
nnoremap <buffer> <silent> \co :call C_CommentToCode()
vnoremap <buffer> <silent> \co :call C_CommentToCode()
noremap <buffer> <silent> \cfr :call C_InsertTemplate("comment.frame")
noremap <buffer> <silent> \cfu :call C_InsertTemplate("comment.function")
noremap <buffer> <silent> \cme :call C_InsertTemplate("comment.method")
noremap <buffer> <silent> \ccl :call C_InsertTemplate("comment.class")
noremap <buffer> <silent> \cfdi :call C_InsertTemplate("comment.file-description")
noremap <buffer> <silent> \cfdh :call C_InsertTemplate("comment.file-description-header")
onoremap <buffer> <silent> \cd :call C_InsertDateAndTime('d')
nnoremap <buffer> <silent> \cd :call C_InsertDateAndTime('d')
vnoremap <buffer> <silent> \cd s:call C_InsertDateAndTime('d')
onoremap <buffer> <silent> \ct :call C_InsertDateAndTime('dt')
nnoremap <buffer> <silent> \ct :call C_InsertDateAndTime('dt')
vnoremap <buffer> <silent> \ct s:call C_InsertDateAndTime('dt')
onoremap <buffer> <silent> \cx :call C_CommentToggle( )
nnoremap <buffer> <silent> \cx :call C_CommentToggle( )
vnoremap <buffer> <silent> \cx :call C_CommentToggle( )
noremap <buffer> \ccs :CFileSection 
noremap <buffer> \chs :HFileSection 
noremap <buffer> \ckc :KeywordComment 
noremap <buffer> \csc :SpecialComment 
onoremap <buffer> <silent> \sd :call C_InsertTemplate("statements.do-while")
nnoremap <buffer> <silent> \sd :call C_InsertTemplate("statements.do-while")
vnoremap <buffer> <silent> \sd :call C_InsertTemplate("statements.do-while", "v")
noremap <buffer> <silent> \sf :call C_InsertTemplate("statements.for")
onoremap <buffer> <silent> \sfo :call C_InsertTemplate("statements.for-block")
nnoremap <buffer> <silent> \sfo :call C_InsertTemplate("statements.for-block")
vnoremap <buffer> <silent> \sfo :call C_InsertTemplate("statements.for-block", "v")
noremap <buffer> <silent> \si :call C_InsertTemplate("statements.if")
onoremap <buffer> <silent> \sif :call C_InsertTemplate("statements.if-block")
nnoremap <buffer> <silent> \sif :call C_InsertTemplate("statements.if-block")
vnoremap <buffer> <silent> \sif :call C_InsertTemplate("statements.if-block", "v")
onoremap <buffer> <silent> \sie :call C_InsertTemplate("statements.if-else")
nnoremap <buffer> <silent> \sie :call C_InsertTemplate("statements.if-else")
vnoremap <buffer> <silent> \sie :call C_InsertTemplate("statements.if-else", "v")
onoremap <buffer> <silent> \sife :call C_InsertTemplate("statements.if-block-else")
nnoremap <buffer> <silent> \sife :call C_InsertTemplate("statements.if-block-else")
vnoremap <buffer> <silent> \sife :call C_InsertTemplate("statements.if-block-else", "v")
onoremap <buffer> <silent> \se :call C_InsertTemplate("statements.else-block")
nnoremap <buffer> <silent> \se :call C_InsertTemplate("statements.else-block")
vnoremap <buffer> <silent> \se :call C_InsertTemplate("statements.else-block", "v")
noremap <buffer> <silent> \sw :call C_InsertTemplate("statements.while")
onoremap <buffer> <silent> \swh :call C_InsertTemplate("statements.while-block")
nnoremap <buffer> <silent> \swh :call C_InsertTemplate("statements.while-block")
vnoremap <buffer> <silent> \swh :call C_InsertTemplate("statements.while-block", "v")
onoremap <buffer> <silent> \ss :call C_InsertTemplate("statements.switch")
nnoremap <buffer> <silent> \ss :call C_InsertTemplate("statements.switch")
vnoremap <buffer> <silent> \ss :call C_InsertTemplate("statements.switch", "v")
noremap <buffer> <silent> \sc :call C_InsertTemplate("statements.case")
onoremap <buffer> <silent> \s{ :call C_InsertTemplate("statements.block")
nnoremap <buffer> <silent> \s{ :call C_InsertTemplate("statements.block")
vnoremap <buffer> <silent> \s{ :call C_InsertTemplate("statements.block", "v")
onoremap <buffer> <silent> \sb :call C_InsertTemplate("statements.block")
nnoremap <buffer> <silent> \sb :call C_InsertTemplate("statements.block")
vnoremap <buffer> <silent> \sb :call C_InsertTemplate("statements.block", "v")
noremap <buffer> \ps :IncludeStdLibrary 
noremap <buffer> \pc :IncludeC99Library 
noremap <buffer> \+ps :IncludeCppLibrary 
noremap <buffer> \+pc :IncludeCppCLibrary 
noremap <buffer> <silent> \p< :call C_InsertTemplate("preprocessor.include-global")
noremap <buffer> <silent> \p" :call C_InsertTemplate("preprocessor.include-local")
noremap <buffer> <silent> \pd :call C_InsertTemplate("preprocessor.define")
noremap <buffer> <silent> \pu :call C_InsertTemplate("preprocessor.undefine")
onoremap <buffer> <silent> \pif :call C_InsertTemplate("preprocessor.if-endif")
nnoremap <buffer> <silent> \pif :call C_InsertTemplate("preprocessor.if-endif")
onoremap <buffer> <silent> \pie :call C_InsertTemplate("preprocessor.if-else-endif")
nnoremap <buffer> <silent> \pie :call C_InsertTemplate("preprocessor.if-else-endif")
onoremap <buffer> <silent> \pid :call C_InsertTemplate("preprocessor.ifdef-else-endif")
nnoremap <buffer> <silent> \pid :call C_InsertTemplate("preprocessor.ifdef-else-endif")
onoremap <buffer> <silent> \pin :call C_InsertTemplate("preprocessor.ifndef-else-endif")
nnoremap <buffer> <silent> \pin :call C_InsertTemplate("preprocessor.ifndef-else-endif")
onoremap <buffer> <silent> \pind :call C_InsertTemplate("preprocessor.ifndef-def-endif")
nnoremap <buffer> <silent> \pind :call C_InsertTemplate("preprocessor.ifndef-def-endif")
vnoremap <buffer> <silent> \pif :call C_InsertTemplate("preprocessor.if-endif", "v")
vnoremap <buffer> <silent> \pie :call C_InsertTemplate("preprocessor.if-else-endif", "v")
vnoremap <buffer> <silent> \pid :call C_InsertTemplate("preprocessor.ifdef-else-endif", "v")
vnoremap <buffer> <silent> \pin :call C_InsertTemplate("preprocessor.ifndef-else-endif", "v")
vnoremap <buffer> <silent> \pind :call C_InsertTemplate("preprocessor.ifndef-def-endif", "v")
onoremap <buffer> <silent> \pi0 :call C_PPIf0("a")
nnoremap <buffer> <silent> \pi0 :call C_PPIf0("a")
vnoremap <buffer> <silent> \pi0 :call C_PPIf0("v")
noremap <buffer> <silent> \pr0 :call C_PPIf0Remove()
noremap <buffer> <silent> \pe :call C_InsertTemplate("preprocessor.error")
noremap <buffer> <silent> \pl :call C_InsertTemplate("preprocessor.line")
noremap <buffer> <silent> \pp :call C_InsertTemplate("preprocessor.pragma")
onoremap <buffer> <silent> \if :call C_InsertTemplate("idioms.function")
nnoremap <buffer> <silent> \if :call C_InsertTemplate("idioms.function")
vnoremap <buffer> <silent> \if :call C_InsertTemplate("idioms.function", "v")
onoremap <buffer> <silent> \isf :call C_InsertTemplate("idioms.function-static")
nnoremap <buffer> <silent> \isf :call C_InsertTemplate("idioms.function-static")
vnoremap <buffer> <silent> \isf :call C_InsertTemplate("idioms.function-static", "v")
onoremap <buffer> <silent> \im :call C_InsertTemplate("idioms.main")
nnoremap <buffer> <silent> \im :call C_InsertTemplate("idioms.main")
vnoremap <buffer> <silent> \im :call C_InsertTemplate("idioms.main", "v")
onoremap <buffer> <silent> \i0 :call C_CodeFor("up"  )
nnoremap <buffer> <silent> \i0 :call C_CodeFor("up"  )
vnoremap <buffer> <silent> \i0 :call C_CodeFor("up"  )
onoremap <buffer> <silent> \in :call C_CodeFor("down")
nnoremap <buffer> <silent> \in :call C_CodeFor("down")
vnoremap <buffer> <silent> \in :call C_CodeFor("down")
onoremap <buffer> <silent> \ie :call C_InsertTemplate("idioms.enum")
nnoremap <buffer> <silent> \ie :call C_InsertTemplate("idioms.enum")
vnoremap <buffer> <silent> \ie :call C_InsertTemplate("idioms.enum"  , "v")
onoremap <buffer> <silent> \is :call C_InsertTemplate("idioms.struct")
nnoremap <buffer> <silent> \is :call C_InsertTemplate("idioms.struct")
vnoremap <buffer> <silent> \is :call C_InsertTemplate("idioms.struct", "v")
onoremap <buffer> <silent> \iu :call C_InsertTemplate("idioms.union")
nnoremap <buffer> <silent> \iu :call C_InsertTemplate("idioms.union")
vnoremap <buffer> <silent> \iu :call C_InsertTemplate("idioms.union" , "v")
noremap <buffer> <silent> \ip :call C_InsertTemplate("idioms.printf")
noremap <buffer> <silent> \isc :call C_InsertTemplate("idioms.scanf")
noremap <buffer> <silent> \ica :call C_InsertTemplate("idioms.calloc")
noremap <buffer> <silent> \ima :call C_InsertTemplate("idioms.malloc")
noremap <buffer> <silent> \ire :call C_InsertTemplate("idioms.realloc")
onoremap <buffer> <silent> \isi :call C_InsertTemplate("idioms.sizeof")
nnoremap <buffer> <silent> \isi :call C_InsertTemplate("idioms.sizeof")
vnoremap <buffer> <silent> \isi :call C_InsertTemplate("idioms.sizeof", "v")
onoremap <buffer> <silent> \ias :call C_InsertTemplate("idioms.assert")
nnoremap <buffer> <silent> \ias :call C_InsertTemplate("idioms.assert")
vnoremap <buffer> <silent> \ias :call C_InsertTemplate("idioms.assert", "v")
onoremap <buffer> <silent> \ii :call C_InsertTemplate("idioms.open-input-file")
nnoremap <buffer> <silent> \ii :call C_InsertTemplate("idioms.open-input-file")
vnoremap <buffer> <silent> \ii :call C_InsertTemplate("idioms.open-input-file", "v")
onoremap <buffer> <silent> \io :call C_InsertTemplate("idioms.open-output-file")
nnoremap <buffer> <silent> \io :call C_InsertTemplate("idioms.open-output-file")
vnoremap <buffer> <silent> \io :call C_InsertTemplate("idioms.open-output-file", "v")
noremap <buffer> <silent> \ifs :call C_InsertTemplate("idioms.fscanf")
noremap <buffer> <silent> \ifp :call C_InsertTemplate("idioms.fprintf")
noremap <buffer> <silent> \nr :call C_CodeSnippet("r")
onoremap <buffer> <silent> \nw :call C_CodeSnippet("w")
nnoremap <buffer> <silent> \nw :call C_CodeSnippet("w")
vnoremap <buffer> <silent> \nw :call C_CodeSnippet("wv")
noremap <buffer> <silent> \ne :call C_CodeSnippet("e")
onoremap <buffer> <silent> \np :call C_ProtoPick("function")
nnoremap <buffer> <silent> \np :call C_ProtoPick("function")
vnoremap <buffer> <silent> \np :call C_ProtoPick("function")
onoremap <buffer> <silent> \nf :call C_ProtoPick("function")
nnoremap <buffer> <silent> \nf :call C_ProtoPick("function")
vnoremap <buffer> <silent> \nf :call C_ProtoPick("function")
onoremap <buffer> <silent> \nm :call C_ProtoPick("method")
nnoremap <buffer> <silent> \nm :call C_ProtoPick("method")
vnoremap <buffer> <silent> \nm :call C_ProtoPick("method")
noremap <buffer> <silent> \ni :call C_ProtoInsert()
noremap <buffer> <silent> \nc :call C_ProtoClear()
noremap <buffer> <silent> \ns :call C_ProtoShow()
noremap <buffer> <silent> \ntl :call C_BrowseTemplateFiles("Local")
noremap <buffer> <silent> \ntr :call C_RereadTemplates()
noremap <buffer> \nts :CStyle 
noremap <buffer> <silent> \+" :call C_InsertTemplate("cpp.cout-operator")
noremap <buffer> <silent> \+co :call C_InsertTemplate("cpp.cout")
noremap <buffer> <silent> \+c :call C_InsertTemplate("cpp.class-definition")
noremap <buffer> <silent> \+cn :call C_InsertTemplate("cpp.class-using-new-definition")
noremap <buffer> <silent> \+ci :call C_InsertTemplate("cpp.class-implementation")
noremap <buffer> <silent> \+cni :call C_InsertTemplate("cpp.class-using-new-implementation")
noremap <buffer> <silent> \+mi :call C_InsertTemplate("cpp.method-implementation")
noremap <buffer> <silent> \+ai :call C_InsertTemplate("cpp.accessor-implementation")
noremap <buffer> <silent> \+tc :call C_InsertTemplate("cpp.template-class-definition")
noremap <buffer> <silent> \+tcn :call C_InsertTemplate("cpp.template-class-using-new-definition")
noremap <buffer> <silent> \+tci :call C_InsertTemplate("cpp.template-class-implementation")
noremap <buffer> <silent> \+tcni :call C_InsertTemplate("cpp.template-class-using-new-implementation")
noremap <buffer> <silent> \+tmi :call C_InsertTemplate("cpp.template-method-implementation")
noremap <buffer> <silent> \+tai :call C_InsertTemplate("cpp.template-accessor-implementation")
noremap <buffer> <silent> \+tf :call C_InsertTemplate("cpp.template-function")
noremap <buffer> <silent> \+ec :call C_InsertTemplate("cpp.error-class")
onoremap <buffer> <silent> \+tr :call C_InsertTemplate("cpp.try-catch")
nnoremap <buffer> <silent> \+tr :call C_InsertTemplate("cpp.try-catch")
vnoremap <buffer> <silent> \+tr :call C_InsertTemplate("cpp.try-catch", "v")
onoremap <buffer> <silent> \+ca :call C_InsertTemplate("cpp.catch")
nnoremap <buffer> <silent> \+ca :call C_InsertTemplate("cpp.catch")
vnoremap <buffer> <silent> \+ca :call C_InsertTemplate("cpp.catch", "v")
onoremap <buffer> <silent> \+c. :call C_InsertTemplate("cpp.catch-points")
nnoremap <buffer> <silent> \+c. :call C_InsertTemplate("cpp.catch-points")
vnoremap <buffer> <silent> \+c. :call C_InsertTemplate("cpp.catch-points", "v")
map <buffer> <silent> \rc :call C_Compile()
map <buffer> <silent> \rl :call C_Link()
map <buffer> <silent> \rr :call C_Run()
map <buffer> <silent> \ra :call C_Arguments()
map <buffer> <silent> \rm :call C_Make()
map <buffer> <silent> \rcm :call C_ChooseMakefile()
map <buffer> <silent> \rmc :call C_MakeClean()
map <buffer> <silent> \rme :call C_MakeExeToRun()
map <buffer> <silent> \rma :call C_MakeArguments()
map <buffer> <silent> \rp :call C_SplintCheck()
map <buffer> <silent> \rpa :call C_SplintArguments()
map <buffer> <silent> \rd :call C_Indent()
omap <buffer> <silent> \rh :call C_Hardcopy()
nmap <buffer> <silent> \rh :call C_Hardcopy()
map <buffer> <silent> \rs :call C_Settings()
vmap <buffer> <silent> \rh :call C_Hardcopy()
map <buffer> <silent> \rx :call C_XtermSize()
map <buffer> <silent> \ro :call C_Toggle_Gvim_Xterm()
map <buffer> <silent> \hp :call C_HelpCsupport()
map <buffer> <silent> \hm :call C_Help("m")
nmap <buffer> ]c <Plug>GitGutterNextHunk
xmap <buffer> ac <Plug>GitGutterTextObjectOuterVisual
omap <buffer> ac <Plug>GitGutterTextObjectOuterPending
xmap <buffer> ic <Plug>GitGutterTextObjectInnerVisual
omap <buffer> ic <Plug>GitGutterTextObjectInnerPending
vnoremap <buffer> {
map <buffer> <silent> <M-F9> :call C_Compile()
map <buffer> <silent> <F9> :call C_Link()
map <buffer> <silent> <C-F9> :call C_Run()
map <buffer> <silent> <S-F9> :call C_Arguments()
imap <buffer> <silent> g <Plug>delimitMateJumpMany
imap <buffer>  <Plug>delimitMateBS
imap <buffer> <silent> <NL> =C_JumpCtrlJ()
imap <buffer> " <Plug>delimitMate"
imap <buffer> ' <Plug>delimitMate'
imap <buffer> ( <Plug>delimitMate(
imap <buffer> ) <Plug>delimitMate)
inoremap <buffer> /* /*  */<Left><Left><Left>
inoremap <buffer> /*
imap <buffer> [ <Plug>delimitMate[
inoremap <buffer> <silent> \cl :call C_EndOfLineComment()
inoremap <buffer> <silent> \cj :call C_AdjustLineEndComm()
inoremap <buffer> <silent> \cfr :call C_InsertTemplate("comment.frame")
inoremap <buffer> <silent> \cfu :call C_InsertTemplate("comment.function")
inoremap <buffer> <silent> \cme :call C_InsertTemplate("comment.method")
inoremap <buffer> <silent> \ccl :call C_InsertTemplate("comment.class")
inoremap <buffer> <silent> \cfdi :call C_InsertTemplate("comment.file-description")
inoremap <buffer> <silent> \cfdh :call C_InsertTemplate("comment.file-description-header")
inoremap <buffer> <silent> \cd :call C_InsertDateAndTime('d')
inoremap <buffer> <silent> \ct :call C_InsertDateAndTime('dt')
inoremap <buffer> <silent> \cx :call C_CommentToggle( )
inoremap <buffer> \ccs :CFileSection 
inoremap <buffer> \chs :HFileSection 
inoremap <buffer> \ckc :KeywordComment 
inoremap <buffer> \csc :SpecialComment 
inoremap <buffer> <silent> \sd :call C_InsertTemplate("statements.do-while")
inoremap <buffer> <silent> \sf :call C_InsertTemplate("statements.for")
inoremap <buffer> <silent> \sfo :call C_InsertTemplate("statements.for-block")
inoremap <buffer> <silent> \si :call C_InsertTemplate("statements.if")
inoremap <buffer> <silent> \sif :call C_InsertTemplate("statements.if-block")
inoremap <buffer> <silent> \sie :call C_InsertTemplate("statements.if-else")
inoremap <buffer> <silent> \sife :call C_InsertTemplate("statements.if-block-else")
inoremap <buffer> <silent> \se :call C_InsertTemplate("statements.else-block")
inoremap <buffer> <silent> \sw :call C_InsertTemplate("statements.while")
inoremap <buffer> <silent> \swh :call C_InsertTemplate("statements.while-block")
inoremap <buffer> <silent> \ss :call C_InsertTemplate("statements.switch")
inoremap <buffer> <silent> \sc :call C_InsertTemplate("statements.case")
inoremap <buffer> <silent> \s{ :call C_InsertTemplate("statements.block")
inoremap <buffer> <silent> \sb :call C_InsertTemplate("statements.block")
inoremap <buffer> \ps :IncludeStdLibrary 
inoremap <buffer> \pc :IncludeC99Library 
inoremap <buffer> \+ps :IncludeCppLibrary 
inoremap <buffer> \+pc :IncludeCppC9Library 
inoremap <buffer> <silent> \p< :call C_InsertTemplate("preprocessor.include-global")
inoremap <buffer> <silent> \p" :call C_InsertTemplate("preprocessor.include-local")
inoremap <buffer> <silent> \pd :call C_InsertTemplate("preprocessor.define")
inoremap <buffer> <silent> \pu :call C_InsertTemplate("preprocessor.undefine")
inoremap <buffer> <silent> \pif :call C_InsertTemplate("preprocessor.if-endif")
inoremap <buffer> <silent> \pie :call C_InsertTemplate("preprocessor.if-else-endif")
inoremap <buffer> <silent> \pid :call C_InsertTemplate("preprocessor.ifdef-else-endif")
inoremap <buffer> <silent> \pin :call C_InsertTemplate("preprocessor.ifndef-else-endif")
inoremap <buffer> <silent> \pind :call C_InsertTemplate("preprocessor.ifndef-def-endif")
inoremap <buffer> <silent> \pi0 :call C_PPIf0("a")
inoremap <buffer> <silent> \pr0 :call C_PPIf0Remove()
inoremap <buffer> <silent> \pe :call C_InsertTemplate("preprocessor.error")
inoremap <buffer> <silent> \pl :call C_InsertTemplate("preprocessor.line")
inoremap <buffer> <silent> \pp :call C_InsertTemplate("preprocessor.pragma")
inoremap <buffer> <silent> \if :call C_InsertTemplate("idioms.function")
inoremap <buffer> <silent> \isf :call C_InsertTemplate("idioms.function-static")
inoremap <buffer> <silent> \im :call C_InsertTemplate("idioms.main")
inoremap <buffer> <silent> \i0 :call C_CodeFor("up"  )
inoremap <buffer> <silent> \in :call C_CodeFor("down")
inoremap <buffer> <silent> \ie :call C_InsertTemplate("idioms.enum")
inoremap <buffer> <silent> \is :call C_InsertTemplate("idioms.struct")
inoremap <buffer> <silent> \iu :call C_InsertTemplate("idioms.union")
inoremap <buffer> <silent> \ip :call C_InsertTemplate("idioms.printf")
inoremap <buffer> <silent> \isc :call C_InsertTemplate("idioms.scanf")
inoremap <buffer> <silent> \ica :call C_InsertTemplate("idioms.calloc")
inoremap <buffer> <silent> \ima :call C_InsertTemplate("idioms.malloc")
inoremap <buffer> <silent> \ire :call C_InsertTemplate("idioms.realloc")
inoremap <buffer> <silent> \isi :call C_InsertTemplate("idioms.sizeof")
inoremap <buffer> <silent> \ias :call C_InsertTemplate("idioms.assert")
inoremap <buffer> <silent> \ii :call C_InsertTemplate("idioms.open-input-file")
inoremap <buffer> <silent> \io :call C_InsertTemplate("idioms.open-output-file")
inoremap <buffer> <silent> \ifs :call C_InsertTemplate("idioms.fscanf")
inoremap <buffer> <silent> \ifp :call C_InsertTemplate("idioms.fprintf")
inoremap <buffer> <silent> \nr :call C_CodeSnippet("r")
inoremap <buffer> <silent> \nw :call C_CodeSnippet("w")
inoremap <buffer> <silent> \ne :call C_CodeSnippet("e")
inoremap <buffer> <silent> \np :call C_ProtoPick("function")
inoremap <buffer> <silent> \nf :call C_ProtoPick("function")
inoremap <buffer> <silent> \nm :call C_ProtoPick("method")
inoremap <buffer> <silent> \ni :call C_ProtoInsert()
inoremap <buffer> <silent> \nc :call C_ProtoClear()
inoremap <buffer> <silent> \ns :call C_ProtoShow()
inoremap <buffer> <silent> \ntl :call C_BrowseTemplateFiles("Local")
inoremap <buffer> <silent> \ntr :call C_RereadTemplates()
inoremap <buffer> \nts :CStyle 
inoremap <buffer> <silent> \+" :call C_InsertTemplate("cpp.cout-operator")
inoremap <buffer> <silent> \+co :call C_InsertTemplate("cpp.cout")
inoremap <buffer> <silent> \+c :call C_InsertTemplate("cpp.class-definition")
inoremap <buffer> <silent> \+cn :call C_InsertTemplate("cpp.class-using-new-definition")
inoremap <buffer> <silent> \+ci :call C_InsertTemplate("cpp.class-implementation")
inoremap <buffer> <silent> \+cni :call C_InsertTemplate("cpp.class-using-new-implementation")
inoremap <buffer> <silent> \+mi :call C_InsertTemplate("cpp.method-implementation")
inoremap <buffer> <silent> \+ai :call C_InsertTemplate("cpp.accessor-implementation")
inoremap <buffer> <silent> \+tc :call C_InsertTemplate("cpp.template-class-definition")
inoremap <buffer> <silent> \+tcn :call C_InsertTemplate("cpp.template-class-using-new-definition")
inoremap <buffer> <silent> \+tci :call C_InsertTemplate("cpp.template-class-implementation")
inoremap <buffer> <silent> \+tcni :call C_InsertTemplate("cpp.template-class-using-new-implementation")
inoremap <buffer> <silent> \+tmi :call C_InsertTemplate("cpp.template-method-implementation")
inoremap <buffer> <silent> \+tai :call C_InsertTemplate("cpp.template-accessor-implementation")
inoremap <buffer> <silent> \+tf :call C_InsertTemplate("cpp.template-function")
inoremap <buffer> <silent> \+ec :call C_InsertTemplate("cpp.error-class")
inoremap <buffer> <silent> \+tr :call C_InsertTemplate("cpp.try-catch")
inoremap <buffer> <silent> \+ca :call C_InsertTemplate("cpp.catch")
inoremap <buffer> <silent> \+c. :call C_InsertTemplate("cpp.catch-points")
imap <buffer> <silent> \rc :call C_Compile()
imap <buffer> <silent> \rl :call C_Link()
imap <buffer> <silent> \rr :call C_Run()
imap <buffer> <silent> \ra :call C_Arguments()
imap <buffer> <silent> \rm :call C_Make()
imap <buffer> <silent> \rmc :call C_MakeClean()
imap <buffer> <silent> \rme :call C_MakeExeToRun()
imap <buffer> <silent> \rma :call C_MakeArguments()
imap <buffer> <silent> \rp :call C_SplintCheck()
imap <buffer> <silent> \rpa :call C_SplintArguments()
imap <buffer> <silent> \rd :call C_Indent()
imap <buffer> <silent> \rh :call C_Hardcopy()
imap <buffer> <silent> \rs :call C_Settings()
imap <buffer> <silent> \rx :call C_XtermSize()
imap <buffer> <silent> \ro :call C_Toggle_Gvim_Xterm()
imap <buffer> <silent> \hp :call C_HelpCsupport()
imap <buffer> <silent> \hm :call C_Help("m")
imap <buffer> ] <Plug>delimitMate]
imap <buffer> ` <Plug>delimitMate`
inoremap <buffer> {
imap <buffer> { <Plug>delimitMate{
imap <buffer> } <Plug>delimitMate}
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal noautoindent
setlocal backupcopy=
setlocal binary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal cindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=sO:*\ -,mO:*\ \ ,exO:*/,s1:/*,mb:*,ex:*/,://
setlocal commentstring=/*%s*/
setlocal complete=.,w,b,u,t,i
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=~/.vim/plugged/c.vim/c-support/wordlists/c-c++-keywords.list,~/.vim/plugged/c.vim/c-support/wordlists/k+r.list,~/.vim/plugged/c.vim/c-support/wordlists/stl_index.list
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'cpp'
setlocal filetype=cpp
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=-1
setlocal include=
setlocal includeexpr=
setlocal indentexpr=
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=ccomplete#Complete
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal noscrollbind
setlocal shiftwidth=4
setlocal noshortname
setlocal signcolumn=auto
setlocal nosmartindent
setlocal softtabstop=0
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=%!airline#statusline(1)
setlocal suffixesadd=
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != 'cpp'
setlocal syntax=cpp
endif
setlocal tabstop=4
setlocal tagcase=
setlocal tags=
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal undolevels=-123456
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 23 - ((22 * winheight(0) + 25) / 50)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
23
normal! 064|
wincmd w
argglobal
if bufexists('Renderable.cpp') | buffer Renderable.cpp | else | edit Renderable.cpp | endif
let s:cpo_save=&cpo
set cpo&vim
imap <buffer> <silent> <M-F9> :call C_Compile()
imap <buffer> <silent> <F9> :call C_Link()
imap <buffer> <silent> <C-F9> :call C_Run()
imap <buffer> <silent> <S-F9> :call C_Arguments()
imap <buffer> <S-Tab> <Plug>delimitMateS-Tab
imap <buffer> <S-BS> <Plug>delimitMateS-BS
imap <buffer> <BS> <Plug>delimitMateBS
nmap <buffer> <silent> <NL> i=C_JumpCtrlJ()
nmap <buffer> ,hp <Plug>GitGutterPreviewHunk
nmap <buffer> ,hu <Plug>GitGutterUndoHunk
nmap <buffer> ,hs <Plug>GitGutterStageHunk
vnoremap <buffer> /* s/*  */<Left><Left><Left>p
nmap <buffer> [c <Plug>GitGutterPrevHunk
onoremap <buffer> <silent> \cl :call C_EndOfLineComment()
nnoremap <buffer> <silent> \cl :call C_EndOfLineComment()
vnoremap <buffer> <silent> \cl :call C_EndOfLineComment()
nnoremap <buffer> <silent> \cj :call C_AdjustLineEndComm()
vnoremap <buffer> <silent> \cj :call C_AdjustLineEndComm()
noremap <buffer> <silent> \cs :call C_GetLineEndCommCol()
onoremap <buffer> <silent> \c* :call C_CodeToCommentC()
nnoremap <buffer> <silent> \c* :call C_CodeToCommentC()
vnoremap <buffer> <silent> \c* :call C_CodeToCommentC()
onoremap <buffer> <silent> \cc :call C_CodeToCommentCpp()
nnoremap <buffer> <silent> \cc :call C_CodeToCommentCpp()
vnoremap <buffer> <silent> \cc :call C_CodeToCommentCpp()
onoremap <buffer> <silent> \co :call C_CommentToCode()
nnoremap <buffer> <silent> \co :call C_CommentToCode()
vnoremap <buffer> <silent> \co :call C_CommentToCode()
noremap <buffer> <silent> \cfr :call C_InsertTemplate("comment.frame")
noremap <buffer> <silent> \cfu :call C_InsertTemplate("comment.function")
noremap <buffer> <silent> \cme :call C_InsertTemplate("comment.method")
noremap <buffer> <silent> \ccl :call C_InsertTemplate("comment.class")
noremap <buffer> <silent> \cfdi :call C_InsertTemplate("comment.file-description")
noremap <buffer> <silent> \cfdh :call C_InsertTemplate("comment.file-description-header")
onoremap <buffer> <silent> \cd :call C_InsertDateAndTime('d')
nnoremap <buffer> <silent> \cd :call C_InsertDateAndTime('d')
vnoremap <buffer> <silent> \cd s:call C_InsertDateAndTime('d')
onoremap <buffer> <silent> \ct :call C_InsertDateAndTime('dt')
nnoremap <buffer> <silent> \ct :call C_InsertDateAndTime('dt')
vnoremap <buffer> <silent> \ct s:call C_InsertDateAndTime('dt')
onoremap <buffer> <silent> \cx :call C_CommentToggle( )
nnoremap <buffer> <silent> \cx :call C_CommentToggle( )
vnoremap <buffer> <silent> \cx :call C_CommentToggle( )
noremap <buffer> \ccs :CFileSection 
noremap <buffer> \chs :HFileSection 
noremap <buffer> \ckc :KeywordComment 
noremap <buffer> \csc :SpecialComment 
onoremap <buffer> <silent> \sd :call C_InsertTemplate("statements.do-while")
nnoremap <buffer> <silent> \sd :call C_InsertTemplate("statements.do-while")
vnoremap <buffer> <silent> \sd :call C_InsertTemplate("statements.do-while", "v")
noremap <buffer> <silent> \sf :call C_InsertTemplate("statements.for")
onoremap <buffer> <silent> \sfo :call C_InsertTemplate("statements.for-block")
nnoremap <buffer> <silent> \sfo :call C_InsertTemplate("statements.for-block")
vnoremap <buffer> <silent> \sfo :call C_InsertTemplate("statements.for-block", "v")
noremap <buffer> <silent> \si :call C_InsertTemplate("statements.if")
onoremap <buffer> <silent> \sif :call C_InsertTemplate("statements.if-block")
nnoremap <buffer> <silent> \sif :call C_InsertTemplate("statements.if-block")
vnoremap <buffer> <silent> \sif :call C_InsertTemplate("statements.if-block", "v")
onoremap <buffer> <silent> \sie :call C_InsertTemplate("statements.if-else")
nnoremap <buffer> <silent> \sie :call C_InsertTemplate("statements.if-else")
vnoremap <buffer> <silent> \sie :call C_InsertTemplate("statements.if-else", "v")
onoremap <buffer> <silent> \sife :call C_InsertTemplate("statements.if-block-else")
nnoremap <buffer> <silent> \sife :call C_InsertTemplate("statements.if-block-else")
vnoremap <buffer> <silent> \sife :call C_InsertTemplate("statements.if-block-else", "v")
onoremap <buffer> <silent> \se :call C_InsertTemplate("statements.else-block")
nnoremap <buffer> <silent> \se :call C_InsertTemplate("statements.else-block")
vnoremap <buffer> <silent> \se :call C_InsertTemplate("statements.else-block", "v")
noremap <buffer> <silent> \sw :call C_InsertTemplate("statements.while")
onoremap <buffer> <silent> \swh :call C_InsertTemplate("statements.while-block")
nnoremap <buffer> <silent> \swh :call C_InsertTemplate("statements.while-block")
vnoremap <buffer> <silent> \swh :call C_InsertTemplate("statements.while-block", "v")
onoremap <buffer> <silent> \ss :call C_InsertTemplate("statements.switch")
nnoremap <buffer> <silent> \ss :call C_InsertTemplate("statements.switch")
vnoremap <buffer> <silent> \ss :call C_InsertTemplate("statements.switch", "v")
noremap <buffer> <silent> \sc :call C_InsertTemplate("statements.case")
onoremap <buffer> <silent> \s{ :call C_InsertTemplate("statements.block")
nnoremap <buffer> <silent> \s{ :call C_InsertTemplate("statements.block")
vnoremap <buffer> <silent> \s{ :call C_InsertTemplate("statements.block", "v")
onoremap <buffer> <silent> \sb :call C_InsertTemplate("statements.block")
nnoremap <buffer> <silent> \sb :call C_InsertTemplate("statements.block")
vnoremap <buffer> <silent> \sb :call C_InsertTemplate("statements.block", "v")
noremap <buffer> \ps :IncludeStdLibrary 
noremap <buffer> \pc :IncludeC99Library 
noremap <buffer> \+ps :IncludeCppLibrary 
noremap <buffer> \+pc :IncludeCppCLibrary 
noremap <buffer> <silent> \p< :call C_InsertTemplate("preprocessor.include-global")
noremap <buffer> <silent> \p" :call C_InsertTemplate("preprocessor.include-local")
noremap <buffer> <silent> \pd :call C_InsertTemplate("preprocessor.define")
noremap <buffer> <silent> \pu :call C_InsertTemplate("preprocessor.undefine")
onoremap <buffer> <silent> \pif :call C_InsertTemplate("preprocessor.if-endif")
nnoremap <buffer> <silent> \pif :call C_InsertTemplate("preprocessor.if-endif")
onoremap <buffer> <silent> \pie :call C_InsertTemplate("preprocessor.if-else-endif")
nnoremap <buffer> <silent> \pie :call C_InsertTemplate("preprocessor.if-else-endif")
onoremap <buffer> <silent> \pid :call C_InsertTemplate("preprocessor.ifdef-else-endif")
nnoremap <buffer> <silent> \pid :call C_InsertTemplate("preprocessor.ifdef-else-endif")
onoremap <buffer> <silent> \pin :call C_InsertTemplate("preprocessor.ifndef-else-endif")
nnoremap <buffer> <silent> \pin :call C_InsertTemplate("preprocessor.ifndef-else-endif")
onoremap <buffer> <silent> \pind :call C_InsertTemplate("preprocessor.ifndef-def-endif")
nnoremap <buffer> <silent> \pind :call C_InsertTemplate("preprocessor.ifndef-def-endif")
vnoremap <buffer> <silent> \pif :call C_InsertTemplate("preprocessor.if-endif", "v")
vnoremap <buffer> <silent> \pie :call C_InsertTemplate("preprocessor.if-else-endif", "v")
vnoremap <buffer> <silent> \pid :call C_InsertTemplate("preprocessor.ifdef-else-endif", "v")
vnoremap <buffer> <silent> \pin :call C_InsertTemplate("preprocessor.ifndef-else-endif", "v")
vnoremap <buffer> <silent> \pind :call C_InsertTemplate("preprocessor.ifndef-def-endif", "v")
onoremap <buffer> <silent> \pi0 :call C_PPIf0("a")
nnoremap <buffer> <silent> \pi0 :call C_PPIf0("a")
vnoremap <buffer> <silent> \pi0 :call C_PPIf0("v")
noremap <buffer> <silent> \pr0 :call C_PPIf0Remove()
noremap <buffer> <silent> \pe :call C_InsertTemplate("preprocessor.error")
noremap <buffer> <silent> \pl :call C_InsertTemplate("preprocessor.line")
noremap <buffer> <silent> \pp :call C_InsertTemplate("preprocessor.pragma")
onoremap <buffer> <silent> \if :call C_InsertTemplate("idioms.function")
nnoremap <buffer> <silent> \if :call C_InsertTemplate("idioms.function")
vnoremap <buffer> <silent> \if :call C_InsertTemplate("idioms.function", "v")
onoremap <buffer> <silent> \isf :call C_InsertTemplate("idioms.function-static")
nnoremap <buffer> <silent> \isf :call C_InsertTemplate("idioms.function-static")
vnoremap <buffer> <silent> \isf :call C_InsertTemplate("idioms.function-static", "v")
onoremap <buffer> <silent> \im :call C_InsertTemplate("idioms.main")
nnoremap <buffer> <silent> \im :call C_InsertTemplate("idioms.main")
vnoremap <buffer> <silent> \im :call C_InsertTemplate("idioms.main", "v")
onoremap <buffer> <silent> \i0 :call C_CodeFor("up"  )
nnoremap <buffer> <silent> \i0 :call C_CodeFor("up"  )
vnoremap <buffer> <silent> \i0 :call C_CodeFor("up"  )
onoremap <buffer> <silent> \in :call C_CodeFor("down")
nnoremap <buffer> <silent> \in :call C_CodeFor("down")
vnoremap <buffer> <silent> \in :call C_CodeFor("down")
onoremap <buffer> <silent> \ie :call C_InsertTemplate("idioms.enum")
nnoremap <buffer> <silent> \ie :call C_InsertTemplate("idioms.enum")
vnoremap <buffer> <silent> \ie :call C_InsertTemplate("idioms.enum"  , "v")
onoremap <buffer> <silent> \is :call C_InsertTemplate("idioms.struct")
nnoremap <buffer> <silent> \is :call C_InsertTemplate("idioms.struct")
vnoremap <buffer> <silent> \is :call C_InsertTemplate("idioms.struct", "v")
onoremap <buffer> <silent> \iu :call C_InsertTemplate("idioms.union")
nnoremap <buffer> <silent> \iu :call C_InsertTemplate("idioms.union")
vnoremap <buffer> <silent> \iu :call C_InsertTemplate("idioms.union" , "v")
noremap <buffer> <silent> \ip :call C_InsertTemplate("idioms.printf")
noremap <buffer> <silent> \isc :call C_InsertTemplate("idioms.scanf")
noremap <buffer> <silent> \ica :call C_InsertTemplate("idioms.calloc")
noremap <buffer> <silent> \ima :call C_InsertTemplate("idioms.malloc")
noremap <buffer> <silent> \ire :call C_InsertTemplate("idioms.realloc")
onoremap <buffer> <silent> \isi :call C_InsertTemplate("idioms.sizeof")
nnoremap <buffer> <silent> \isi :call C_InsertTemplate("idioms.sizeof")
vnoremap <buffer> <silent> \isi :call C_InsertTemplate("idioms.sizeof", "v")
onoremap <buffer> <silent> \ias :call C_InsertTemplate("idioms.assert")
nnoremap <buffer> <silent> \ias :call C_InsertTemplate("idioms.assert")
vnoremap <buffer> <silent> \ias :call C_InsertTemplate("idioms.assert", "v")
onoremap <buffer> <silent> \ii :call C_InsertTemplate("idioms.open-input-file")
nnoremap <buffer> <silent> \ii :call C_InsertTemplate("idioms.open-input-file")
vnoremap <buffer> <silent> \ii :call C_InsertTemplate("idioms.open-input-file", "v")
onoremap <buffer> <silent> \io :call C_InsertTemplate("idioms.open-output-file")
nnoremap <buffer> <silent> \io :call C_InsertTemplate("idioms.open-output-file")
vnoremap <buffer> <silent> \io :call C_InsertTemplate("idioms.open-output-file", "v")
noremap <buffer> <silent> \ifs :call C_InsertTemplate("idioms.fscanf")
noremap <buffer> <silent> \ifp :call C_InsertTemplate("idioms.fprintf")
noremap <buffer> <silent> \nr :call C_CodeSnippet("r")
onoremap <buffer> <silent> \nw :call C_CodeSnippet("w")
nnoremap <buffer> <silent> \nw :call C_CodeSnippet("w")
vnoremap <buffer> <silent> \nw :call C_CodeSnippet("wv")
noremap <buffer> <silent> \ne :call C_CodeSnippet("e")
onoremap <buffer> <silent> \np :call C_ProtoPick("function")
nnoremap <buffer> <silent> \np :call C_ProtoPick("function")
vnoremap <buffer> <silent> \np :call C_ProtoPick("function")
onoremap <buffer> <silent> \nf :call C_ProtoPick("function")
nnoremap <buffer> <silent> \nf :call C_ProtoPick("function")
vnoremap <buffer> <silent> \nf :call C_ProtoPick("function")
onoremap <buffer> <silent> \nm :call C_ProtoPick("method")
nnoremap <buffer> <silent> \nm :call C_ProtoPick("method")
vnoremap <buffer> <silent> \nm :call C_ProtoPick("method")
noremap <buffer> <silent> \ni :call C_ProtoInsert()
noremap <buffer> <silent> \nc :call C_ProtoClear()
noremap <buffer> <silent> \ns :call C_ProtoShow()
noremap <buffer> <silent> \ntl :call C_BrowseTemplateFiles("Local")
noremap <buffer> <silent> \ntr :call C_RereadTemplates()
noremap <buffer> \nts :CStyle 
noremap <buffer> <silent> \+" :call C_InsertTemplate("cpp.cout-operator")
noremap <buffer> <silent> \+co :call C_InsertTemplate("cpp.cout")
noremap <buffer> <silent> \+c :call C_InsertTemplate("cpp.class-definition")
noremap <buffer> <silent> \+cn :call C_InsertTemplate("cpp.class-using-new-definition")
noremap <buffer> <silent> \+ci :call C_InsertTemplate("cpp.class-implementation")
noremap <buffer> <silent> \+cni :call C_InsertTemplate("cpp.class-using-new-implementation")
noremap <buffer> <silent> \+mi :call C_InsertTemplate("cpp.method-implementation")
noremap <buffer> <silent> \+ai :call C_InsertTemplate("cpp.accessor-implementation")
noremap <buffer> <silent> \+tc :call C_InsertTemplate("cpp.template-class-definition")
noremap <buffer> <silent> \+tcn :call C_InsertTemplate("cpp.template-class-using-new-definition")
noremap <buffer> <silent> \+tci :call C_InsertTemplate("cpp.template-class-implementation")
noremap <buffer> <silent> \+tcni :call C_InsertTemplate("cpp.template-class-using-new-implementation")
noremap <buffer> <silent> \+tmi :call C_InsertTemplate("cpp.template-method-implementation")
noremap <buffer> <silent> \+tai :call C_InsertTemplate("cpp.template-accessor-implementation")
noremap <buffer> <silent> \+tf :call C_InsertTemplate("cpp.template-function")
noremap <buffer> <silent> \+ec :call C_InsertTemplate("cpp.error-class")
onoremap <buffer> <silent> \+tr :call C_InsertTemplate("cpp.try-catch")
nnoremap <buffer> <silent> \+tr :call C_InsertTemplate("cpp.try-catch")
vnoremap <buffer> <silent> \+tr :call C_InsertTemplate("cpp.try-catch", "v")
onoremap <buffer> <silent> \+ca :call C_InsertTemplate("cpp.catch")
nnoremap <buffer> <silent> \+ca :call C_InsertTemplate("cpp.catch")
vnoremap <buffer> <silent> \+ca :call C_InsertTemplate("cpp.catch", "v")
onoremap <buffer> <silent> \+c. :call C_InsertTemplate("cpp.catch-points")
nnoremap <buffer> <silent> \+c. :call C_InsertTemplate("cpp.catch-points")
vnoremap <buffer> <silent> \+c. :call C_InsertTemplate("cpp.catch-points", "v")
map <buffer> <silent> \rc :call C_Compile()
map <buffer> <silent> \rl :call C_Link()
map <buffer> <silent> \rr :call C_Run()
map <buffer> <silent> \ra :call C_Arguments()
map <buffer> <silent> \rm :call C_Make()
map <buffer> <silent> \rcm :call C_ChooseMakefile()
map <buffer> <silent> \rmc :call C_MakeClean()
map <buffer> <silent> \rme :call C_MakeExeToRun()
map <buffer> <silent> \rma :call C_MakeArguments()
map <buffer> <silent> \rp :call C_SplintCheck()
map <buffer> <silent> \rpa :call C_SplintArguments()
map <buffer> <silent> \rd :call C_Indent()
omap <buffer> <silent> \rh :call C_Hardcopy()
nmap <buffer> <silent> \rh :call C_Hardcopy()
map <buffer> <silent> \rs :call C_Settings()
vmap <buffer> <silent> \rh :call C_Hardcopy()
map <buffer> <silent> \rx :call C_XtermSize()
map <buffer> <silent> \ro :call C_Toggle_Gvim_Xterm()
map <buffer> <silent> \hp :call C_HelpCsupport()
map <buffer> <silent> \hm :call C_Help("m")
nmap <buffer> ]c <Plug>GitGutterNextHunk
xmap <buffer> ac <Plug>GitGutterTextObjectOuterVisual
omap <buffer> ac <Plug>GitGutterTextObjectOuterPending
xmap <buffer> ic <Plug>GitGutterTextObjectInnerVisual
omap <buffer> ic <Plug>GitGutterTextObjectInnerPending
vnoremap <buffer> {
map <buffer> <silent> <M-F9> :call C_Compile()
map <buffer> <silent> <F9> :call C_Link()
map <buffer> <silent> <C-F9> :call C_Run()
map <buffer> <silent> <S-F9> :call C_Arguments()
imap <buffer> <silent> g <Plug>delimitMateJumpMany
imap <buffer>  <Plug>delimitMateBS
imap <buffer> <silent> <NL> =C_JumpCtrlJ()
imap <buffer> " <Plug>delimitMate"
imap <buffer> ' <Plug>delimitMate'
imap <buffer> ( <Plug>delimitMate(
imap <buffer> ) <Plug>delimitMate)
inoremap <buffer> /* /*  */<Left><Left><Left>
inoremap <buffer> /*
imap <buffer> [ <Plug>delimitMate[
inoremap <buffer> <silent> \cl :call C_EndOfLineComment()
inoremap <buffer> <silent> \cj :call C_AdjustLineEndComm()
inoremap <buffer> <silent> \cfr :call C_InsertTemplate("comment.frame")
inoremap <buffer> <silent> \cfu :call C_InsertTemplate("comment.function")
inoremap <buffer> <silent> \cme :call C_InsertTemplate("comment.method")
inoremap <buffer> <silent> \ccl :call C_InsertTemplate("comment.class")
inoremap <buffer> <silent> \cfdi :call C_InsertTemplate("comment.file-description")
inoremap <buffer> <silent> \cfdh :call C_InsertTemplate("comment.file-description-header")
inoremap <buffer> <silent> \cd :call C_InsertDateAndTime('d')
inoremap <buffer> <silent> \ct :call C_InsertDateAndTime('dt')
inoremap <buffer> <silent> \cx :call C_CommentToggle( )
inoremap <buffer> \ccs :CFileSection 
inoremap <buffer> \chs :HFileSection 
inoremap <buffer> \ckc :KeywordComment 
inoremap <buffer> \csc :SpecialComment 
inoremap <buffer> <silent> \sd :call C_InsertTemplate("statements.do-while")
inoremap <buffer> <silent> \sf :call C_InsertTemplate("statements.for")
inoremap <buffer> <silent> \sfo :call C_InsertTemplate("statements.for-block")
inoremap <buffer> <silent> \si :call C_InsertTemplate("statements.if")
inoremap <buffer> <silent> \sif :call C_InsertTemplate("statements.if-block")
inoremap <buffer> <silent> \sie :call C_InsertTemplate("statements.if-else")
inoremap <buffer> <silent> \sife :call C_InsertTemplate("statements.if-block-else")
inoremap <buffer> <silent> \se :call C_InsertTemplate("statements.else-block")
inoremap <buffer> <silent> \sw :call C_InsertTemplate("statements.while")
inoremap <buffer> <silent> \swh :call C_InsertTemplate("statements.while-block")
inoremap <buffer> <silent> \ss :call C_InsertTemplate("statements.switch")
inoremap <buffer> <silent> \sc :call C_InsertTemplate("statements.case")
inoremap <buffer> <silent> \s{ :call C_InsertTemplate("statements.block")
inoremap <buffer> <silent> \sb :call C_InsertTemplate("statements.block")
inoremap <buffer> \ps :IncludeStdLibrary 
inoremap <buffer> \pc :IncludeC99Library 
inoremap <buffer> \+ps :IncludeCppLibrary 
inoremap <buffer> \+pc :IncludeCppC9Library 
inoremap <buffer> <silent> \p< :call C_InsertTemplate("preprocessor.include-global")
inoremap <buffer> <silent> \p" :call C_InsertTemplate("preprocessor.include-local")
inoremap <buffer> <silent> \pd :call C_InsertTemplate("preprocessor.define")
inoremap <buffer> <silent> \pu :call C_InsertTemplate("preprocessor.undefine")
inoremap <buffer> <silent> \pif :call C_InsertTemplate("preprocessor.if-endif")
inoremap <buffer> <silent> \pie :call C_InsertTemplate("preprocessor.if-else-endif")
inoremap <buffer> <silent> \pid :call C_InsertTemplate("preprocessor.ifdef-else-endif")
inoremap <buffer> <silent> \pin :call C_InsertTemplate("preprocessor.ifndef-else-endif")
inoremap <buffer> <silent> \pind :call C_InsertTemplate("preprocessor.ifndef-def-endif")
inoremap <buffer> <silent> \pi0 :call C_PPIf0("a")
inoremap <buffer> <silent> \pr0 :call C_PPIf0Remove()
inoremap <buffer> <silent> \pe :call C_InsertTemplate("preprocessor.error")
inoremap <buffer> <silent> \pl :call C_InsertTemplate("preprocessor.line")
inoremap <buffer> <silent> \pp :call C_InsertTemplate("preprocessor.pragma")
inoremap <buffer> <silent> \if :call C_InsertTemplate("idioms.function")
inoremap <buffer> <silent> \isf :call C_InsertTemplate("idioms.function-static")
inoremap <buffer> <silent> \im :call C_InsertTemplate("idioms.main")
inoremap <buffer> <silent> \i0 :call C_CodeFor("up"  )
inoremap <buffer> <silent> \in :call C_CodeFor("down")
inoremap <buffer> <silent> \ie :call C_InsertTemplate("idioms.enum")
inoremap <buffer> <silent> \is :call C_InsertTemplate("idioms.struct")
inoremap <buffer> <silent> \iu :call C_InsertTemplate("idioms.union")
inoremap <buffer> <silent> \ip :call C_InsertTemplate("idioms.printf")
inoremap <buffer> <silent> \isc :call C_InsertTemplate("idioms.scanf")
inoremap <buffer> <silent> \ica :call C_InsertTemplate("idioms.calloc")
inoremap <buffer> <silent> \ima :call C_InsertTemplate("idioms.malloc")
inoremap <buffer> <silent> \ire :call C_InsertTemplate("idioms.realloc")
inoremap <buffer> <silent> \isi :call C_InsertTemplate("idioms.sizeof")
inoremap <buffer> <silent> \ias :call C_InsertTemplate("idioms.assert")
inoremap <buffer> <silent> \ii :call C_InsertTemplate("idioms.open-input-file")
inoremap <buffer> <silent> \io :call C_InsertTemplate("idioms.open-output-file")
inoremap <buffer> <silent> \ifs :call C_InsertTemplate("idioms.fscanf")
inoremap <buffer> <silent> \ifp :call C_InsertTemplate("idioms.fprintf")
inoremap <buffer> <silent> \nr :call C_CodeSnippet("r")
inoremap <buffer> <silent> \nw :call C_CodeSnippet("w")
inoremap <buffer> <silent> \ne :call C_CodeSnippet("e")
inoremap <buffer> <silent> \np :call C_ProtoPick("function")
inoremap <buffer> <silent> \nf :call C_ProtoPick("function")
inoremap <buffer> <silent> \nm :call C_ProtoPick("method")
inoremap <buffer> <silent> \ni :call C_ProtoInsert()
inoremap <buffer> <silent> \nc :call C_ProtoClear()
inoremap <buffer> <silent> \ns :call C_ProtoShow()
inoremap <buffer> <silent> \ntl :call C_BrowseTemplateFiles("Local")
inoremap <buffer> <silent> \ntr :call C_RereadTemplates()
inoremap <buffer> \nts :CStyle 
inoremap <buffer> <silent> \+" :call C_InsertTemplate("cpp.cout-operator")
inoremap <buffer> <silent> \+co :call C_InsertTemplate("cpp.cout")
inoremap <buffer> <silent> \+c :call C_InsertTemplate("cpp.class-definition")
inoremap <buffer> <silent> \+cn :call C_InsertTemplate("cpp.class-using-new-definition")
inoremap <buffer> <silent> \+ci :call C_InsertTemplate("cpp.class-implementation")
inoremap <buffer> <silent> \+cni :call C_InsertTemplate("cpp.class-using-new-implementation")
inoremap <buffer> <silent> \+mi :call C_InsertTemplate("cpp.method-implementation")
inoremap <buffer> <silent> \+ai :call C_InsertTemplate("cpp.accessor-implementation")
inoremap <buffer> <silent> \+tc :call C_InsertTemplate("cpp.template-class-definition")
inoremap <buffer> <silent> \+tcn :call C_InsertTemplate("cpp.template-class-using-new-definition")
inoremap <buffer> <silent> \+tci :call C_InsertTemplate("cpp.template-class-implementation")
inoremap <buffer> <silent> \+tcni :call C_InsertTemplate("cpp.template-class-using-new-implementation")
inoremap <buffer> <silent> \+tmi :call C_InsertTemplate("cpp.template-method-implementation")
inoremap <buffer> <silent> \+tai :call C_InsertTemplate("cpp.template-accessor-implementation")
inoremap <buffer> <silent> \+tf :call C_InsertTemplate("cpp.template-function")
inoremap <buffer> <silent> \+ec :call C_InsertTemplate("cpp.error-class")
inoremap <buffer> <silent> \+tr :call C_InsertTemplate("cpp.try-catch")
inoremap <buffer> <silent> \+ca :call C_InsertTemplate("cpp.catch")
inoremap <buffer> <silent> \+c. :call C_InsertTemplate("cpp.catch-points")
imap <buffer> <silent> \rc :call C_Compile()
imap <buffer> <silent> \rl :call C_Link()
imap <buffer> <silent> \rr :call C_Run()
imap <buffer> <silent> \ra :call C_Arguments()
imap <buffer> <silent> \rm :call C_Make()
imap <buffer> <silent> \rmc :call C_MakeClean()
imap <buffer> <silent> \rme :call C_MakeExeToRun()
imap <buffer> <silent> \rma :call C_MakeArguments()
imap <buffer> <silent> \rp :call C_SplintCheck()
imap <buffer> <silent> \rpa :call C_SplintArguments()
imap <buffer> <silent> \rd :call C_Indent()
imap <buffer> <silent> \rh :call C_Hardcopy()
imap <buffer> <silent> \rs :call C_Settings()
imap <buffer> <silent> \rx :call C_XtermSize()
imap <buffer> <silent> \ro :call C_Toggle_Gvim_Xterm()
imap <buffer> <silent> \hp :call C_HelpCsupport()
imap <buffer> <silent> \hm :call C_Help("m")
imap <buffer> ] <Plug>delimitMate]
imap <buffer> ` <Plug>delimitMate`
inoremap <buffer> {
imap <buffer> { <Plug>delimitMate{
imap <buffer> } <Plug>delimitMate}
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal noautoindent
setlocal backupcopy=
setlocal binary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal cindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=sO:*\ -,mO:*\ \ ,exO:*/,s1:/*,mb:*,ex:*/,://
setlocal commentstring=/*%s*/
setlocal complete=.,w,b,u,t,i
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=~/.vim/plugged/c.vim/c-support/wordlists/c-c++-keywords.list,~/.vim/plugged/c.vim/c-support/wordlists/k+r.list,~/.vim/plugged/c.vim/c-support/wordlists/stl_index.list
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'cpp'
setlocal filetype=cpp
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=-1
setlocal include=
setlocal includeexpr=
setlocal indentexpr=
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=ccomplete#Complete
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal noscrollbind
setlocal shiftwidth=4
setlocal noshortname
setlocal signcolumn=auto
setlocal nosmartindent
setlocal softtabstop=0
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=%!airline#statusline(2)
setlocal suffixesadd=
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != 'cpp'
setlocal syntax=cpp
endif
setlocal tabstop=4
setlocal tagcase=
setlocal tags=
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal undolevels=-123456
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 35 - ((34 * winheight(0) + 25) / 50)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
35
normal! 035|
wincmd w
exe 'vert 1resize ' . ((&columns * 89 + 89) / 179)
exe 'vert 2resize ' . ((&columns * 89 + 89) / 179)
tabedit ShaderProgram.hpp
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winminheight=1 winheight=1 winminwidth=1 winwidth=1
exe 'vert 1resize ' . ((&columns * 89 + 89) / 179)
exe 'vert 2resize ' . ((&columns * 89 + 89) / 179)
argglobal
let s:cpo_save=&cpo
set cpo&vim
imap <buffer> <silent> <M-F9> :call C_Compile()
imap <buffer> <silent> <F9> :call C_Link()
imap <buffer> <silent> <C-F9> :call C_Run()
imap <buffer> <silent> <S-F9> :call C_Arguments()
imap <buffer> <S-Tab> <Plug>delimitMateS-Tab
imap <buffer> <S-BS> <Plug>delimitMateS-BS
imap <buffer> <BS> <Plug>delimitMateBS
nmap <buffer> <silent> <NL> i=C_JumpCtrlJ()
nmap <buffer> ,hp <Plug>GitGutterPreviewHunk
nmap <buffer> ,hu <Plug>GitGutterUndoHunk
nmap <buffer> ,hs <Plug>GitGutterStageHunk
vnoremap <buffer> /* s/*  */<Left><Left><Left>p
nmap <buffer> [c <Plug>GitGutterPrevHunk
onoremap <buffer> <silent> \cl :call C_EndOfLineComment()
nnoremap <buffer> <silent> \cl :call C_EndOfLineComment()
vnoremap <buffer> <silent> \cl :call C_EndOfLineComment()
nnoremap <buffer> <silent> \cj :call C_AdjustLineEndComm()
vnoremap <buffer> <silent> \cj :call C_AdjustLineEndComm()
noremap <buffer> <silent> \cs :call C_GetLineEndCommCol()
onoremap <buffer> <silent> \c* :call C_CodeToCommentC()
nnoremap <buffer> <silent> \c* :call C_CodeToCommentC()
vnoremap <buffer> <silent> \c* :call C_CodeToCommentC()
onoremap <buffer> <silent> \cc :call C_CodeToCommentCpp()
nnoremap <buffer> <silent> \cc :call C_CodeToCommentCpp()
vnoremap <buffer> <silent> \cc :call C_CodeToCommentCpp()
onoremap <buffer> <silent> \co :call C_CommentToCode()
nnoremap <buffer> <silent> \co :call C_CommentToCode()
vnoremap <buffer> <silent> \co :call C_CommentToCode()
noremap <buffer> <silent> \cfr :call C_InsertTemplate("comment.frame")
noremap <buffer> <silent> \cfu :call C_InsertTemplate("comment.function")
noremap <buffer> <silent> \cme :call C_InsertTemplate("comment.method")
noremap <buffer> <silent> \ccl :call C_InsertTemplate("comment.class")
noremap <buffer> <silent> \cfdi :call C_InsertTemplate("comment.file-description")
noremap <buffer> <silent> \cfdh :call C_InsertTemplate("comment.file-description-header")
onoremap <buffer> <silent> \cd :call C_InsertDateAndTime('d')
nnoremap <buffer> <silent> \cd :call C_InsertDateAndTime('d')
vnoremap <buffer> <silent> \cd s:call C_InsertDateAndTime('d')
onoremap <buffer> <silent> \ct :call C_InsertDateAndTime('dt')
nnoremap <buffer> <silent> \ct :call C_InsertDateAndTime('dt')
vnoremap <buffer> <silent> \ct s:call C_InsertDateAndTime('dt')
onoremap <buffer> <silent> \cx :call C_CommentToggle( )
nnoremap <buffer> <silent> \cx :call C_CommentToggle( )
vnoremap <buffer> <silent> \cx :call C_CommentToggle( )
noremap <buffer> \ccs :CFileSection 
noremap <buffer> \chs :HFileSection 
noremap <buffer> \ckc :KeywordComment 
noremap <buffer> \csc :SpecialComment 
onoremap <buffer> <silent> \sd :call C_InsertTemplate("statements.do-while")
nnoremap <buffer> <silent> \sd :call C_InsertTemplate("statements.do-while")
vnoremap <buffer> <silent> \sd :call C_InsertTemplate("statements.do-while", "v")
noremap <buffer> <silent> \sf :call C_InsertTemplate("statements.for")
onoremap <buffer> <silent> \sfo :call C_InsertTemplate("statements.for-block")
nnoremap <buffer> <silent> \sfo :call C_InsertTemplate("statements.for-block")
vnoremap <buffer> <silent> \sfo :call C_InsertTemplate("statements.for-block", "v")
noremap <buffer> <silent> \si :call C_InsertTemplate("statements.if")
onoremap <buffer> <silent> \sif :call C_InsertTemplate("statements.if-block")
nnoremap <buffer> <silent> \sif :call C_InsertTemplate("statements.if-block")
vnoremap <buffer> <silent> \sif :call C_InsertTemplate("statements.if-block", "v")
onoremap <buffer> <silent> \sie :call C_InsertTemplate("statements.if-else")
nnoremap <buffer> <silent> \sie :call C_InsertTemplate("statements.if-else")
vnoremap <buffer> <silent> \sie :call C_InsertTemplate("statements.if-else", "v")
onoremap <buffer> <silent> \sife :call C_InsertTemplate("statements.if-block-else")
nnoremap <buffer> <silent> \sife :call C_InsertTemplate("statements.if-block-else")
vnoremap <buffer> <silent> \sife :call C_InsertTemplate("statements.if-block-else", "v")
onoremap <buffer> <silent> \se :call C_InsertTemplate("statements.else-block")
nnoremap <buffer> <silent> \se :call C_InsertTemplate("statements.else-block")
vnoremap <buffer> <silent> \se :call C_InsertTemplate("statements.else-block", "v")
noremap <buffer> <silent> \sw :call C_InsertTemplate("statements.while")
onoremap <buffer> <silent> \swh :call C_InsertTemplate("statements.while-block")
nnoremap <buffer> <silent> \swh :call C_InsertTemplate("statements.while-block")
vnoremap <buffer> <silent> \swh :call C_InsertTemplate("statements.while-block", "v")
onoremap <buffer> <silent> \ss :call C_InsertTemplate("statements.switch")
nnoremap <buffer> <silent> \ss :call C_InsertTemplate("statements.switch")
vnoremap <buffer> <silent> \ss :call C_InsertTemplate("statements.switch", "v")
noremap <buffer> <silent> \sc :call C_InsertTemplate("statements.case")
onoremap <buffer> <silent> \s{ :call C_InsertTemplate("statements.block")
nnoremap <buffer> <silent> \s{ :call C_InsertTemplate("statements.block")
vnoremap <buffer> <silent> \s{ :call C_InsertTemplate("statements.block", "v")
onoremap <buffer> <silent> \sb :call C_InsertTemplate("statements.block")
nnoremap <buffer> <silent> \sb :call C_InsertTemplate("statements.block")
vnoremap <buffer> <silent> \sb :call C_InsertTemplate("statements.block", "v")
noremap <buffer> \ps :IncludeStdLibrary 
noremap <buffer> \pc :IncludeC99Library 
noremap <buffer> \+ps :IncludeCppLibrary 
noremap <buffer> \+pc :IncludeCppCLibrary 
noremap <buffer> <silent> \p< :call C_InsertTemplate("preprocessor.include-global")
noremap <buffer> <silent> \p" :call C_InsertTemplate("preprocessor.include-local")
noremap <buffer> <silent> \pd :call C_InsertTemplate("preprocessor.define")
noremap <buffer> <silent> \pu :call C_InsertTemplate("preprocessor.undefine")
onoremap <buffer> <silent> \pif :call C_InsertTemplate("preprocessor.if-endif")
nnoremap <buffer> <silent> \pif :call C_InsertTemplate("preprocessor.if-endif")
onoremap <buffer> <silent> \pie :call C_InsertTemplate("preprocessor.if-else-endif")
nnoremap <buffer> <silent> \pie :call C_InsertTemplate("preprocessor.if-else-endif")
onoremap <buffer> <silent> \pid :call C_InsertTemplate("preprocessor.ifdef-else-endif")
nnoremap <buffer> <silent> \pid :call C_InsertTemplate("preprocessor.ifdef-else-endif")
onoremap <buffer> <silent> \pin :call C_InsertTemplate("preprocessor.ifndef-else-endif")
nnoremap <buffer> <silent> \pin :call C_InsertTemplate("preprocessor.ifndef-else-endif")
onoremap <buffer> <silent> \pind :call C_InsertTemplate("preprocessor.ifndef-def-endif")
nnoremap <buffer> <silent> \pind :call C_InsertTemplate("preprocessor.ifndef-def-endif")
vnoremap <buffer> <silent> \pif :call C_InsertTemplate("preprocessor.if-endif", "v")
vnoremap <buffer> <silent> \pie :call C_InsertTemplate("preprocessor.if-else-endif", "v")
vnoremap <buffer> <silent> \pid :call C_InsertTemplate("preprocessor.ifdef-else-endif", "v")
vnoremap <buffer> <silent> \pin :call C_InsertTemplate("preprocessor.ifndef-else-endif", "v")
vnoremap <buffer> <silent> \pind :call C_InsertTemplate("preprocessor.ifndef-def-endif", "v")
onoremap <buffer> <silent> \pi0 :call C_PPIf0("a")
nnoremap <buffer> <silent> \pi0 :call C_PPIf0("a")
vnoremap <buffer> <silent> \pi0 :call C_PPIf0("v")
noremap <buffer> <silent> \pr0 :call C_PPIf0Remove()
noremap <buffer> <silent> \pe :call C_InsertTemplate("preprocessor.error")
noremap <buffer> <silent> \pl :call C_InsertTemplate("preprocessor.line")
noremap <buffer> <silent> \pp :call C_InsertTemplate("preprocessor.pragma")
onoremap <buffer> <silent> \if :call C_InsertTemplate("idioms.function")
nnoremap <buffer> <silent> \if :call C_InsertTemplate("idioms.function")
vnoremap <buffer> <silent> \if :call C_InsertTemplate("idioms.function", "v")
onoremap <buffer> <silent> \isf :call C_InsertTemplate("idioms.function-static")
nnoremap <buffer> <silent> \isf :call C_InsertTemplate("idioms.function-static")
vnoremap <buffer> <silent> \isf :call C_InsertTemplate("idioms.function-static", "v")
onoremap <buffer> <silent> \im :call C_InsertTemplate("idioms.main")
nnoremap <buffer> <silent> \im :call C_InsertTemplate("idioms.main")
vnoremap <buffer> <silent> \im :call C_InsertTemplate("idioms.main", "v")
onoremap <buffer> <silent> \i0 :call C_CodeFor("up"  )
nnoremap <buffer> <silent> \i0 :call C_CodeFor("up"  )
vnoremap <buffer> <silent> \i0 :call C_CodeFor("up"  )
onoremap <buffer> <silent> \in :call C_CodeFor("down")
nnoremap <buffer> <silent> \in :call C_CodeFor("down")
vnoremap <buffer> <silent> \in :call C_CodeFor("down")
onoremap <buffer> <silent> \ie :call C_InsertTemplate("idioms.enum")
nnoremap <buffer> <silent> \ie :call C_InsertTemplate("idioms.enum")
vnoremap <buffer> <silent> \ie :call C_InsertTemplate("idioms.enum"  , "v")
onoremap <buffer> <silent> \is :call C_InsertTemplate("idioms.struct")
nnoremap <buffer> <silent> \is :call C_InsertTemplate("idioms.struct")
vnoremap <buffer> <silent> \is :call C_InsertTemplate("idioms.struct", "v")
onoremap <buffer> <silent> \iu :call C_InsertTemplate("idioms.union")
nnoremap <buffer> <silent> \iu :call C_InsertTemplate("idioms.union")
vnoremap <buffer> <silent> \iu :call C_InsertTemplate("idioms.union" , "v")
noremap <buffer> <silent> \ip :call C_InsertTemplate("idioms.printf")
noremap <buffer> <silent> \isc :call C_InsertTemplate("idioms.scanf")
noremap <buffer> <silent> \ica :call C_InsertTemplate("idioms.calloc")
noremap <buffer> <silent> \ima :call C_InsertTemplate("idioms.malloc")
noremap <buffer> <silent> \ire :call C_InsertTemplate("idioms.realloc")
onoremap <buffer> <silent> \isi :call C_InsertTemplate("idioms.sizeof")
nnoremap <buffer> <silent> \isi :call C_InsertTemplate("idioms.sizeof")
vnoremap <buffer> <silent> \isi :call C_InsertTemplate("idioms.sizeof", "v")
onoremap <buffer> <silent> \ias :call C_InsertTemplate("idioms.assert")
nnoremap <buffer> <silent> \ias :call C_InsertTemplate("idioms.assert")
vnoremap <buffer> <silent> \ias :call C_InsertTemplate("idioms.assert", "v")
onoremap <buffer> <silent> \ii :call C_InsertTemplate("idioms.open-input-file")
nnoremap <buffer> <silent> \ii :call C_InsertTemplate("idioms.open-input-file")
vnoremap <buffer> <silent> \ii :call C_InsertTemplate("idioms.open-input-file", "v")
onoremap <buffer> <silent> \io :call C_InsertTemplate("idioms.open-output-file")
nnoremap <buffer> <silent> \io :call C_InsertTemplate("idioms.open-output-file")
vnoremap <buffer> <silent> \io :call C_InsertTemplate("idioms.open-output-file", "v")
noremap <buffer> <silent> \ifs :call C_InsertTemplate("idioms.fscanf")
noremap <buffer> <silent> \ifp :call C_InsertTemplate("idioms.fprintf")
noremap <buffer> <silent> \nr :call C_CodeSnippet("r")
onoremap <buffer> <silent> \nw :call C_CodeSnippet("w")
nnoremap <buffer> <silent> \nw :call C_CodeSnippet("w")
vnoremap <buffer> <silent> \nw :call C_CodeSnippet("wv")
noremap <buffer> <silent> \ne :call C_CodeSnippet("e")
onoremap <buffer> <silent> \np :call C_ProtoPick("function")
nnoremap <buffer> <silent> \np :call C_ProtoPick("function")
vnoremap <buffer> <silent> \np :call C_ProtoPick("function")
onoremap <buffer> <silent> \nf :call C_ProtoPick("function")
nnoremap <buffer> <silent> \nf :call C_ProtoPick("function")
vnoremap <buffer> <silent> \nf :call C_ProtoPick("function")
onoremap <buffer> <silent> \nm :call C_ProtoPick("method")
nnoremap <buffer> <silent> \nm :call C_ProtoPick("method")
vnoremap <buffer> <silent> \nm :call C_ProtoPick("method")
noremap <buffer> <silent> \ni :call C_ProtoInsert()
noremap <buffer> <silent> \nc :call C_ProtoClear()
noremap <buffer> <silent> \ns :call C_ProtoShow()
noremap <buffer> <silent> \ntl :call C_BrowseTemplateFiles("Local")
noremap <buffer> <silent> \ntr :call C_RereadTemplates()
noremap <buffer> \nts :CStyle 
noremap <buffer> <silent> \+" :call C_InsertTemplate("cpp.cout-operator")
noremap <buffer> <silent> \+co :call C_InsertTemplate("cpp.cout")
noremap <buffer> <silent> \+c :call C_InsertTemplate("cpp.class-definition")
noremap <buffer> <silent> \+cn :call C_InsertTemplate("cpp.class-using-new-definition")
noremap <buffer> <silent> \+ci :call C_InsertTemplate("cpp.class-implementation")
noremap <buffer> <silent> \+cni :call C_InsertTemplate("cpp.class-using-new-implementation")
noremap <buffer> <silent> \+mi :call C_InsertTemplate("cpp.method-implementation")
noremap <buffer> <silent> \+ai :call C_InsertTemplate("cpp.accessor-implementation")
noremap <buffer> <silent> \+tc :call C_InsertTemplate("cpp.template-class-definition")
noremap <buffer> <silent> \+tcn :call C_InsertTemplate("cpp.template-class-using-new-definition")
noremap <buffer> <silent> \+tci :call C_InsertTemplate("cpp.template-class-implementation")
noremap <buffer> <silent> \+tcni :call C_InsertTemplate("cpp.template-class-using-new-implementation")
noremap <buffer> <silent> \+tmi :call C_InsertTemplate("cpp.template-method-implementation")
noremap <buffer> <silent> \+tai :call C_InsertTemplate("cpp.template-accessor-implementation")
noremap <buffer> <silent> \+tf :call C_InsertTemplate("cpp.template-function")
noremap <buffer> <silent> \+ec :call C_InsertTemplate("cpp.error-class")
onoremap <buffer> <silent> \+tr :call C_InsertTemplate("cpp.try-catch")
nnoremap <buffer> <silent> \+tr :call C_InsertTemplate("cpp.try-catch")
vnoremap <buffer> <silent> \+tr :call C_InsertTemplate("cpp.try-catch", "v")
onoremap <buffer> <silent> \+ca :call C_InsertTemplate("cpp.catch")
nnoremap <buffer> <silent> \+ca :call C_InsertTemplate("cpp.catch")
vnoremap <buffer> <silent> \+ca :call C_InsertTemplate("cpp.catch", "v")
onoremap <buffer> <silent> \+c. :call C_InsertTemplate("cpp.catch-points")
nnoremap <buffer> <silent> \+c. :call C_InsertTemplate("cpp.catch-points")
vnoremap <buffer> <silent> \+c. :call C_InsertTemplate("cpp.catch-points", "v")
map <buffer> <silent> \rc :call C_Compile()
map <buffer> <silent> \rl :call C_Link()
map <buffer> <silent> \rr :call C_Run()
map <buffer> <silent> \ra :call C_Arguments()
map <buffer> <silent> \rm :call C_Make()
map <buffer> <silent> \rcm :call C_ChooseMakefile()
map <buffer> <silent> \rmc :call C_MakeClean()
map <buffer> <silent> \rme :call C_MakeExeToRun()
map <buffer> <silent> \rma :call C_MakeArguments()
map <buffer> <silent> \rp :call C_SplintCheck()
map <buffer> <silent> \rpa :call C_SplintArguments()
map <buffer> <silent> \rd :call C_Indent()
omap <buffer> <silent> \rh :call C_Hardcopy()
nmap <buffer> <silent> \rh :call C_Hardcopy()
map <buffer> <silent> \rs :call C_Settings()
vmap <buffer> <silent> \rh :call C_Hardcopy()
map <buffer> <silent> \rx :call C_XtermSize()
map <buffer> <silent> \ro :call C_Toggle_Gvim_Xterm()
map <buffer> <silent> \hp :call C_HelpCsupport()
map <buffer> <silent> \hm :call C_Help("m")
nmap <buffer> ]c <Plug>GitGutterNextHunk
xmap <buffer> ac <Plug>GitGutterTextObjectOuterVisual
omap <buffer> ac <Plug>GitGutterTextObjectOuterPending
xmap <buffer> ic <Plug>GitGutterTextObjectInnerVisual
omap <buffer> ic <Plug>GitGutterTextObjectInnerPending
vnoremap <buffer> {
map <buffer> <silent> <M-F9> :call C_Compile()
map <buffer> <silent> <F9> :call C_Link()
map <buffer> <silent> <C-F9> :call C_Run()
map <buffer> <silent> <S-F9> :call C_Arguments()
imap <buffer> <silent> g <Plug>delimitMateJumpMany
imap <buffer>  <Plug>delimitMateBS
imap <buffer> <silent> <NL> =C_JumpCtrlJ()
imap <buffer> " <Plug>delimitMate"
imap <buffer> ' <Plug>delimitMate'
imap <buffer> ( <Plug>delimitMate(
imap <buffer> ) <Plug>delimitMate)
inoremap <buffer> /* /*  */<Left><Left><Left>
inoremap <buffer> /*
imap <buffer> [ <Plug>delimitMate[
inoremap <buffer> <silent> \cl :call C_EndOfLineComment()
inoremap <buffer> <silent> \cj :call C_AdjustLineEndComm()
inoremap <buffer> <silent> \cfr :call C_InsertTemplate("comment.frame")
inoremap <buffer> <silent> \cfu :call C_InsertTemplate("comment.function")
inoremap <buffer> <silent> \cme :call C_InsertTemplate("comment.method")
inoremap <buffer> <silent> \ccl :call C_InsertTemplate("comment.class")
inoremap <buffer> <silent> \cfdi :call C_InsertTemplate("comment.file-description")
inoremap <buffer> <silent> \cfdh :call C_InsertTemplate("comment.file-description-header")
inoremap <buffer> <silent> \cd :call C_InsertDateAndTime('d')
inoremap <buffer> <silent> \ct :call C_InsertDateAndTime('dt')
inoremap <buffer> <silent> \cx :call C_CommentToggle( )
inoremap <buffer> \ccs :CFileSection 
inoremap <buffer> \chs :HFileSection 
inoremap <buffer> \ckc :KeywordComment 
inoremap <buffer> \csc :SpecialComment 
inoremap <buffer> <silent> \sd :call C_InsertTemplate("statements.do-while")
inoremap <buffer> <silent> \sf :call C_InsertTemplate("statements.for")
inoremap <buffer> <silent> \sfo :call C_InsertTemplate("statements.for-block")
inoremap <buffer> <silent> \si :call C_InsertTemplate("statements.if")
inoremap <buffer> <silent> \sif :call C_InsertTemplate("statements.if-block")
inoremap <buffer> <silent> \sie :call C_InsertTemplate("statements.if-else")
inoremap <buffer> <silent> \sife :call C_InsertTemplate("statements.if-block-else")
inoremap <buffer> <silent> \se :call C_InsertTemplate("statements.else-block")
inoremap <buffer> <silent> \sw :call C_InsertTemplate("statements.while")
inoremap <buffer> <silent> \swh :call C_InsertTemplate("statements.while-block")
inoremap <buffer> <silent> \ss :call C_InsertTemplate("statements.switch")
inoremap <buffer> <silent> \sc :call C_InsertTemplate("statements.case")
inoremap <buffer> <silent> \s{ :call C_InsertTemplate("statements.block")
inoremap <buffer> <silent> \sb :call C_InsertTemplate("statements.block")
inoremap <buffer> \ps :IncludeStdLibrary 
inoremap <buffer> \pc :IncludeC99Library 
inoremap <buffer> \+ps :IncludeCppLibrary 
inoremap <buffer> \+pc :IncludeCppC9Library 
inoremap <buffer> <silent> \p< :call C_InsertTemplate("preprocessor.include-global")
inoremap <buffer> <silent> \p" :call C_InsertTemplate("preprocessor.include-local")
inoremap <buffer> <silent> \pd :call C_InsertTemplate("preprocessor.define")
inoremap <buffer> <silent> \pu :call C_InsertTemplate("preprocessor.undefine")
inoremap <buffer> <silent> \pif :call C_InsertTemplate("preprocessor.if-endif")
inoremap <buffer> <silent> \pie :call C_InsertTemplate("preprocessor.if-else-endif")
inoremap <buffer> <silent> \pid :call C_InsertTemplate("preprocessor.ifdef-else-endif")
inoremap <buffer> <silent> \pin :call C_InsertTemplate("preprocessor.ifndef-else-endif")
inoremap <buffer> <silent> \pind :call C_InsertTemplate("preprocessor.ifndef-def-endif")
inoremap <buffer> <silent> \pi0 :call C_PPIf0("a")
inoremap <buffer> <silent> \pr0 :call C_PPIf0Remove()
inoremap <buffer> <silent> \pe :call C_InsertTemplate("preprocessor.error")
inoremap <buffer> <silent> \pl :call C_InsertTemplate("preprocessor.line")
inoremap <buffer> <silent> \pp :call C_InsertTemplate("preprocessor.pragma")
inoremap <buffer> <silent> \if :call C_InsertTemplate("idioms.function")
inoremap <buffer> <silent> \isf :call C_InsertTemplate("idioms.function-static")
inoremap <buffer> <silent> \im :call C_InsertTemplate("idioms.main")
inoremap <buffer> <silent> \i0 :call C_CodeFor("up"  )
inoremap <buffer> <silent> \in :call C_CodeFor("down")
inoremap <buffer> <silent> \ie :call C_InsertTemplate("idioms.enum")
inoremap <buffer> <silent> \is :call C_InsertTemplate("idioms.struct")
inoremap <buffer> <silent> \iu :call C_InsertTemplate("idioms.union")
inoremap <buffer> <silent> \ip :call C_InsertTemplate("idioms.printf")
inoremap <buffer> <silent> \isc :call C_InsertTemplate("idioms.scanf")
inoremap <buffer> <silent> \ica :call C_InsertTemplate("idioms.calloc")
inoremap <buffer> <silent> \ima :call C_InsertTemplate("idioms.malloc")
inoremap <buffer> <silent> \ire :call C_InsertTemplate("idioms.realloc")
inoremap <buffer> <silent> \isi :call C_InsertTemplate("idioms.sizeof")
inoremap <buffer> <silent> \ias :call C_InsertTemplate("idioms.assert")
inoremap <buffer> <silent> \ii :call C_InsertTemplate("idioms.open-input-file")
inoremap <buffer> <silent> \io :call C_InsertTemplate("idioms.open-output-file")
inoremap <buffer> <silent> \ifs :call C_InsertTemplate("idioms.fscanf")
inoremap <buffer> <silent> \ifp :call C_InsertTemplate("idioms.fprintf")
inoremap <buffer> <silent> \nr :call C_CodeSnippet("r")
inoremap <buffer> <silent> \nw :call C_CodeSnippet("w")
inoremap <buffer> <silent> \ne :call C_CodeSnippet("e")
inoremap <buffer> <silent> \np :call C_ProtoPick("function")
inoremap <buffer> <silent> \nf :call C_ProtoPick("function")
inoremap <buffer> <silent> \nm :call C_ProtoPick("method")
inoremap <buffer> <silent> \ni :call C_ProtoInsert()
inoremap <buffer> <silent> \nc :call C_ProtoClear()
inoremap <buffer> <silent> \ns :call C_ProtoShow()
inoremap <buffer> <silent> \ntl :call C_BrowseTemplateFiles("Local")
inoremap <buffer> <silent> \ntr :call C_RereadTemplates()
inoremap <buffer> \nts :CStyle 
inoremap <buffer> <silent> \+" :call C_InsertTemplate("cpp.cout-operator")
inoremap <buffer> <silent> \+co :call C_InsertTemplate("cpp.cout")
inoremap <buffer> <silent> \+c :call C_InsertTemplate("cpp.class-definition")
inoremap <buffer> <silent> \+cn :call C_InsertTemplate("cpp.class-using-new-definition")
inoremap <buffer> <silent> \+ci :call C_InsertTemplate("cpp.class-implementation")
inoremap <buffer> <silent> \+cni :call C_InsertTemplate("cpp.class-using-new-implementation")
inoremap <buffer> <silent> \+mi :call C_InsertTemplate("cpp.method-implementation")
inoremap <buffer> <silent> \+ai :call C_InsertTemplate("cpp.accessor-implementation")
inoremap <buffer> <silent> \+tc :call C_InsertTemplate("cpp.template-class-definition")
inoremap <buffer> <silent> \+tcn :call C_InsertTemplate("cpp.template-class-using-new-definition")
inoremap <buffer> <silent> \+tci :call C_InsertTemplate("cpp.template-class-implementation")
inoremap <buffer> <silent> \+tcni :call C_InsertTemplate("cpp.template-class-using-new-implementation")
inoremap <buffer> <silent> \+tmi :call C_InsertTemplate("cpp.template-method-implementation")
inoremap <buffer> <silent> \+tai :call C_InsertTemplate("cpp.template-accessor-implementation")
inoremap <buffer> <silent> \+tf :call C_InsertTemplate("cpp.template-function")
inoremap <buffer> <silent> \+ec :call C_InsertTemplate("cpp.error-class")
inoremap <buffer> <silent> \+tr :call C_InsertTemplate("cpp.try-catch")
inoremap <buffer> <silent> \+ca :call C_InsertTemplate("cpp.catch")
inoremap <buffer> <silent> \+c. :call C_InsertTemplate("cpp.catch-points")
imap <buffer> <silent> \rc :call C_Compile()
imap <buffer> <silent> \rl :call C_Link()
imap <buffer> <silent> \rr :call C_Run()
imap <buffer> <silent> \ra :call C_Arguments()
imap <buffer> <silent> \rm :call C_Make()
imap <buffer> <silent> \rmc :call C_MakeClean()
imap <buffer> <silent> \rme :call C_MakeExeToRun()
imap <buffer> <silent> \rma :call C_MakeArguments()
imap <buffer> <silent> \rp :call C_SplintCheck()
imap <buffer> <silent> \rpa :call C_SplintArguments()
imap <buffer> <silent> \rd :call C_Indent()
imap <buffer> <silent> \rh :call C_Hardcopy()
imap <buffer> <silent> \rs :call C_Settings()
imap <buffer> <silent> \rx :call C_XtermSize()
imap <buffer> <silent> \ro :call C_Toggle_Gvim_Xterm()
imap <buffer> <silent> \hp :call C_HelpCsupport()
imap <buffer> <silent> \hm :call C_Help("m")
imap <buffer> ] <Plug>delimitMate]
imap <buffer> ` <Plug>delimitMate`
inoremap <buffer> {
imap <buffer> { <Plug>delimitMate{
imap <buffer> } <Plug>delimitMate}
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal noautoindent
setlocal backupcopy=
setlocal binary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal cindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=sO:*\ -,mO:*\ \ ,exO:*/,s1:/*,mb:*,ex:*/,://
setlocal commentstring=/*%s*/
setlocal complete=.,w,b,u,t,i
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=~/.vim/plugged/c.vim/c-support/wordlists/c-c++-keywords.list,~/.vim/plugged/c.vim/c-support/wordlists/k+r.list,~/.vim/plugged/c.vim/c-support/wordlists/stl_index.list
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'cpp'
setlocal filetype=cpp
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=-1
setlocal include=
setlocal includeexpr=
setlocal indentexpr=
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=ccomplete#Complete
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal noscrollbind
setlocal shiftwidth=4
setlocal noshortname
setlocal signcolumn=auto
setlocal nosmartindent
setlocal softtabstop=0
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=%!airline#statusline(1)
setlocal suffixesadd=
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != 'cpp'
setlocal syntax=cpp
endif
setlocal tabstop=4
setlocal tagcase=
setlocal tags=
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal undolevels=-123456
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 1 - ((0 * winheight(0) + 25) / 50)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
wincmd w
argglobal
if bufexists('ShaderProgram.cpp') | buffer ShaderProgram.cpp | else | edit ShaderProgram.cpp | endif
let s:cpo_save=&cpo
set cpo&vim
imap <buffer> <silent> <M-F9> :call C_Compile()
imap <buffer> <silent> <F9> :call C_Link()
imap <buffer> <silent> <C-F9> :call C_Run()
imap <buffer> <silent> <S-F9> :call C_Arguments()
imap <buffer> <S-Tab> <Plug>delimitMateS-Tab
imap <buffer> <S-BS> <Plug>delimitMateS-BS
imap <buffer> <BS> <Plug>delimitMateBS
nmap <buffer> <silent> <NL> i=C_JumpCtrlJ()
nmap <buffer> ,hp <Plug>GitGutterPreviewHunk
nmap <buffer> ,hu <Plug>GitGutterUndoHunk
nmap <buffer> ,hs <Plug>GitGutterStageHunk
vnoremap <buffer> /* s/*  */<Left><Left><Left>p
nmap <buffer> [c <Plug>GitGutterPrevHunk
onoremap <buffer> <silent> \cl :call C_EndOfLineComment()
nnoremap <buffer> <silent> \cl :call C_EndOfLineComment()
vnoremap <buffer> <silent> \cl :call C_EndOfLineComment()
nnoremap <buffer> <silent> \cj :call C_AdjustLineEndComm()
vnoremap <buffer> <silent> \cj :call C_AdjustLineEndComm()
noremap <buffer> <silent> \cs :call C_GetLineEndCommCol()
onoremap <buffer> <silent> \c* :call C_CodeToCommentC()
nnoremap <buffer> <silent> \c* :call C_CodeToCommentC()
vnoremap <buffer> <silent> \c* :call C_CodeToCommentC()
onoremap <buffer> <silent> \cc :call C_CodeToCommentCpp()
nnoremap <buffer> <silent> \cc :call C_CodeToCommentCpp()
vnoremap <buffer> <silent> \cc :call C_CodeToCommentCpp()
onoremap <buffer> <silent> \co :call C_CommentToCode()
nnoremap <buffer> <silent> \co :call C_CommentToCode()
vnoremap <buffer> <silent> \co :call C_CommentToCode()
noremap <buffer> <silent> \cfr :call C_InsertTemplate("comment.frame")
noremap <buffer> <silent> \cfu :call C_InsertTemplate("comment.function")
noremap <buffer> <silent> \cme :call C_InsertTemplate("comment.method")
noremap <buffer> <silent> \ccl :call C_InsertTemplate("comment.class")
noremap <buffer> <silent> \cfdi :call C_InsertTemplate("comment.file-description")
noremap <buffer> <silent> \cfdh :call C_InsertTemplate("comment.file-description-header")
onoremap <buffer> <silent> \cd :call C_InsertDateAndTime('d')
nnoremap <buffer> <silent> \cd :call C_InsertDateAndTime('d')
vnoremap <buffer> <silent> \cd s:call C_InsertDateAndTime('d')
onoremap <buffer> <silent> \ct :call C_InsertDateAndTime('dt')
nnoremap <buffer> <silent> \ct :call C_InsertDateAndTime('dt')
vnoremap <buffer> <silent> \ct s:call C_InsertDateAndTime('dt')
onoremap <buffer> <silent> \cx :call C_CommentToggle( )
nnoremap <buffer> <silent> \cx :call C_CommentToggle( )
vnoremap <buffer> <silent> \cx :call C_CommentToggle( )
noremap <buffer> \ccs :CFileSection 
noremap <buffer> \chs :HFileSection 
noremap <buffer> \ckc :KeywordComment 
noremap <buffer> \csc :SpecialComment 
onoremap <buffer> <silent> \sd :call C_InsertTemplate("statements.do-while")
nnoremap <buffer> <silent> \sd :call C_InsertTemplate("statements.do-while")
vnoremap <buffer> <silent> \sd :call C_InsertTemplate("statements.do-while", "v")
noremap <buffer> <silent> \sf :call C_InsertTemplate("statements.for")
onoremap <buffer> <silent> \sfo :call C_InsertTemplate("statements.for-block")
nnoremap <buffer> <silent> \sfo :call C_InsertTemplate("statements.for-block")
vnoremap <buffer> <silent> \sfo :call C_InsertTemplate("statements.for-block", "v")
noremap <buffer> <silent> \si :call C_InsertTemplate("statements.if")
onoremap <buffer> <silent> \sif :call C_InsertTemplate("statements.if-block")
nnoremap <buffer> <silent> \sif :call C_InsertTemplate("statements.if-block")
vnoremap <buffer> <silent> \sif :call C_InsertTemplate("statements.if-block", "v")
onoremap <buffer> <silent> \sie :call C_InsertTemplate("statements.if-else")
nnoremap <buffer> <silent> \sie :call C_InsertTemplate("statements.if-else")
vnoremap <buffer> <silent> \sie :call C_InsertTemplate("statements.if-else", "v")
onoremap <buffer> <silent> \sife :call C_InsertTemplate("statements.if-block-else")
nnoremap <buffer> <silent> \sife :call C_InsertTemplate("statements.if-block-else")
vnoremap <buffer> <silent> \sife :call C_InsertTemplate("statements.if-block-else", "v")
onoremap <buffer> <silent> \se :call C_InsertTemplate("statements.else-block")
nnoremap <buffer> <silent> \se :call C_InsertTemplate("statements.else-block")
vnoremap <buffer> <silent> \se :call C_InsertTemplate("statements.else-block", "v")
noremap <buffer> <silent> \sw :call C_InsertTemplate("statements.while")
onoremap <buffer> <silent> \swh :call C_InsertTemplate("statements.while-block")
nnoremap <buffer> <silent> \swh :call C_InsertTemplate("statements.while-block")
vnoremap <buffer> <silent> \swh :call C_InsertTemplate("statements.while-block", "v")
onoremap <buffer> <silent> \ss :call C_InsertTemplate("statements.switch")
nnoremap <buffer> <silent> \ss :call C_InsertTemplate("statements.switch")
vnoremap <buffer> <silent> \ss :call C_InsertTemplate("statements.switch", "v")
noremap <buffer> <silent> \sc :call C_InsertTemplate("statements.case")
onoremap <buffer> <silent> \s{ :call C_InsertTemplate("statements.block")
nnoremap <buffer> <silent> \s{ :call C_InsertTemplate("statements.block")
vnoremap <buffer> <silent> \s{ :call C_InsertTemplate("statements.block", "v")
onoremap <buffer> <silent> \sb :call C_InsertTemplate("statements.block")
nnoremap <buffer> <silent> \sb :call C_InsertTemplate("statements.block")
vnoremap <buffer> <silent> \sb :call C_InsertTemplate("statements.block", "v")
noremap <buffer> \ps :IncludeStdLibrary 
noremap <buffer> \pc :IncludeC99Library 
noremap <buffer> \+ps :IncludeCppLibrary 
noremap <buffer> \+pc :IncludeCppCLibrary 
noremap <buffer> <silent> \p< :call C_InsertTemplate("preprocessor.include-global")
noremap <buffer> <silent> \p" :call C_InsertTemplate("preprocessor.include-local")
noremap <buffer> <silent> \pd :call C_InsertTemplate("preprocessor.define")
noremap <buffer> <silent> \pu :call C_InsertTemplate("preprocessor.undefine")
onoremap <buffer> <silent> \pif :call C_InsertTemplate("preprocessor.if-endif")
nnoremap <buffer> <silent> \pif :call C_InsertTemplate("preprocessor.if-endif")
onoremap <buffer> <silent> \pie :call C_InsertTemplate("preprocessor.if-else-endif")
nnoremap <buffer> <silent> \pie :call C_InsertTemplate("preprocessor.if-else-endif")
onoremap <buffer> <silent> \pid :call C_InsertTemplate("preprocessor.ifdef-else-endif")
nnoremap <buffer> <silent> \pid :call C_InsertTemplate("preprocessor.ifdef-else-endif")
onoremap <buffer> <silent> \pin :call C_InsertTemplate("preprocessor.ifndef-else-endif")
nnoremap <buffer> <silent> \pin :call C_InsertTemplate("preprocessor.ifndef-else-endif")
onoremap <buffer> <silent> \pind :call C_InsertTemplate("preprocessor.ifndef-def-endif")
nnoremap <buffer> <silent> \pind :call C_InsertTemplate("preprocessor.ifndef-def-endif")
vnoremap <buffer> <silent> \pif :call C_InsertTemplate("preprocessor.if-endif", "v")
vnoremap <buffer> <silent> \pie :call C_InsertTemplate("preprocessor.if-else-endif", "v")
vnoremap <buffer> <silent> \pid :call C_InsertTemplate("preprocessor.ifdef-else-endif", "v")
vnoremap <buffer> <silent> \pin :call C_InsertTemplate("preprocessor.ifndef-else-endif", "v")
vnoremap <buffer> <silent> \pind :call C_InsertTemplate("preprocessor.ifndef-def-endif", "v")
onoremap <buffer> <silent> \pi0 :call C_PPIf0("a")
nnoremap <buffer> <silent> \pi0 :call C_PPIf0("a")
vnoremap <buffer> <silent> \pi0 :call C_PPIf0("v")
noremap <buffer> <silent> \pr0 :call C_PPIf0Remove()
noremap <buffer> <silent> \pe :call C_InsertTemplate("preprocessor.error")
noremap <buffer> <silent> \pl :call C_InsertTemplate("preprocessor.line")
noremap <buffer> <silent> \pp :call C_InsertTemplate("preprocessor.pragma")
onoremap <buffer> <silent> \if :call C_InsertTemplate("idioms.function")
nnoremap <buffer> <silent> \if :call C_InsertTemplate("idioms.function")
vnoremap <buffer> <silent> \if :call C_InsertTemplate("idioms.function", "v")
onoremap <buffer> <silent> \isf :call C_InsertTemplate("idioms.function-static")
nnoremap <buffer> <silent> \isf :call C_InsertTemplate("idioms.function-static")
vnoremap <buffer> <silent> \isf :call C_InsertTemplate("idioms.function-static", "v")
onoremap <buffer> <silent> \im :call C_InsertTemplate("idioms.main")
nnoremap <buffer> <silent> \im :call C_InsertTemplate("idioms.main")
vnoremap <buffer> <silent> \im :call C_InsertTemplate("idioms.main", "v")
onoremap <buffer> <silent> \i0 :call C_CodeFor("up"  )
nnoremap <buffer> <silent> \i0 :call C_CodeFor("up"  )
vnoremap <buffer> <silent> \i0 :call C_CodeFor("up"  )
onoremap <buffer> <silent> \in :call C_CodeFor("down")
nnoremap <buffer> <silent> \in :call C_CodeFor("down")
vnoremap <buffer> <silent> \in :call C_CodeFor("down")
onoremap <buffer> <silent> \ie :call C_InsertTemplate("idioms.enum")
nnoremap <buffer> <silent> \ie :call C_InsertTemplate("idioms.enum")
vnoremap <buffer> <silent> \ie :call C_InsertTemplate("idioms.enum"  , "v")
onoremap <buffer> <silent> \is :call C_InsertTemplate("idioms.struct")
nnoremap <buffer> <silent> \is :call C_InsertTemplate("idioms.struct")
vnoremap <buffer> <silent> \is :call C_InsertTemplate("idioms.struct", "v")
onoremap <buffer> <silent> \iu :call C_InsertTemplate("idioms.union")
nnoremap <buffer> <silent> \iu :call C_InsertTemplate("idioms.union")
vnoremap <buffer> <silent> \iu :call C_InsertTemplate("idioms.union" , "v")
noremap <buffer> <silent> \ip :call C_InsertTemplate("idioms.printf")
noremap <buffer> <silent> \isc :call C_InsertTemplate("idioms.scanf")
noremap <buffer> <silent> \ica :call C_InsertTemplate("idioms.calloc")
noremap <buffer> <silent> \ima :call C_InsertTemplate("idioms.malloc")
noremap <buffer> <silent> \ire :call C_InsertTemplate("idioms.realloc")
onoremap <buffer> <silent> \isi :call C_InsertTemplate("idioms.sizeof")
nnoremap <buffer> <silent> \isi :call C_InsertTemplate("idioms.sizeof")
vnoremap <buffer> <silent> \isi :call C_InsertTemplate("idioms.sizeof", "v")
onoremap <buffer> <silent> \ias :call C_InsertTemplate("idioms.assert")
nnoremap <buffer> <silent> \ias :call C_InsertTemplate("idioms.assert")
vnoremap <buffer> <silent> \ias :call C_InsertTemplate("idioms.assert", "v")
onoremap <buffer> <silent> \ii :call C_InsertTemplate("idioms.open-input-file")
nnoremap <buffer> <silent> \ii :call C_InsertTemplate("idioms.open-input-file")
vnoremap <buffer> <silent> \ii :call C_InsertTemplate("idioms.open-input-file", "v")
onoremap <buffer> <silent> \io :call C_InsertTemplate("idioms.open-output-file")
nnoremap <buffer> <silent> \io :call C_InsertTemplate("idioms.open-output-file")
vnoremap <buffer> <silent> \io :call C_InsertTemplate("idioms.open-output-file", "v")
noremap <buffer> <silent> \ifs :call C_InsertTemplate("idioms.fscanf")
noremap <buffer> <silent> \ifp :call C_InsertTemplate("idioms.fprintf")
noremap <buffer> <silent> \nr :call C_CodeSnippet("r")
onoremap <buffer> <silent> \nw :call C_CodeSnippet("w")
nnoremap <buffer> <silent> \nw :call C_CodeSnippet("w")
vnoremap <buffer> <silent> \nw :call C_CodeSnippet("wv")
noremap <buffer> <silent> \ne :call C_CodeSnippet("e")
onoremap <buffer> <silent> \np :call C_ProtoPick("function")
nnoremap <buffer> <silent> \np :call C_ProtoPick("function")
vnoremap <buffer> <silent> \np :call C_ProtoPick("function")
onoremap <buffer> <silent> \nf :call C_ProtoPick("function")
nnoremap <buffer> <silent> \nf :call C_ProtoPick("function")
vnoremap <buffer> <silent> \nf :call C_ProtoPick("function")
onoremap <buffer> <silent> \nm :call C_ProtoPick("method")
nnoremap <buffer> <silent> \nm :call C_ProtoPick("method")
vnoremap <buffer> <silent> \nm :call C_ProtoPick("method")
noremap <buffer> <silent> \ni :call C_ProtoInsert()
noremap <buffer> <silent> \nc :call C_ProtoClear()
noremap <buffer> <silent> \ns :call C_ProtoShow()
noremap <buffer> <silent> \ntl :call C_BrowseTemplateFiles("Local")
noremap <buffer> <silent> \ntr :call C_RereadTemplates()
noremap <buffer> \nts :CStyle 
noremap <buffer> <silent> \+" :call C_InsertTemplate("cpp.cout-operator")
noremap <buffer> <silent> \+co :call C_InsertTemplate("cpp.cout")
noremap <buffer> <silent> \+c :call C_InsertTemplate("cpp.class-definition")
noremap <buffer> <silent> \+cn :call C_InsertTemplate("cpp.class-using-new-definition")
noremap <buffer> <silent> \+ci :call C_InsertTemplate("cpp.class-implementation")
noremap <buffer> <silent> \+cni :call C_InsertTemplate("cpp.class-using-new-implementation")
noremap <buffer> <silent> \+mi :call C_InsertTemplate("cpp.method-implementation")
noremap <buffer> <silent> \+ai :call C_InsertTemplate("cpp.accessor-implementation")
noremap <buffer> <silent> \+tc :call C_InsertTemplate("cpp.template-class-definition")
noremap <buffer> <silent> \+tcn :call C_InsertTemplate("cpp.template-class-using-new-definition")
noremap <buffer> <silent> \+tci :call C_InsertTemplate("cpp.template-class-implementation")
noremap <buffer> <silent> \+tcni :call C_InsertTemplate("cpp.template-class-using-new-implementation")
noremap <buffer> <silent> \+tmi :call C_InsertTemplate("cpp.template-method-implementation")
noremap <buffer> <silent> \+tai :call C_InsertTemplate("cpp.template-accessor-implementation")
noremap <buffer> <silent> \+tf :call C_InsertTemplate("cpp.template-function")
noremap <buffer> <silent> \+ec :call C_InsertTemplate("cpp.error-class")
onoremap <buffer> <silent> \+tr :call C_InsertTemplate("cpp.try-catch")
nnoremap <buffer> <silent> \+tr :call C_InsertTemplate("cpp.try-catch")
vnoremap <buffer> <silent> \+tr :call C_InsertTemplate("cpp.try-catch", "v")
onoremap <buffer> <silent> \+ca :call C_InsertTemplate("cpp.catch")
nnoremap <buffer> <silent> \+ca :call C_InsertTemplate("cpp.catch")
vnoremap <buffer> <silent> \+ca :call C_InsertTemplate("cpp.catch", "v")
onoremap <buffer> <silent> \+c. :call C_InsertTemplate("cpp.catch-points")
nnoremap <buffer> <silent> \+c. :call C_InsertTemplate("cpp.catch-points")
vnoremap <buffer> <silent> \+c. :call C_InsertTemplate("cpp.catch-points", "v")
map <buffer> <silent> \rc :call C_Compile()
map <buffer> <silent> \rl :call C_Link()
map <buffer> <silent> \rr :call C_Run()
map <buffer> <silent> \ra :call C_Arguments()
map <buffer> <silent> \rm :call C_Make()
map <buffer> <silent> \rcm :call C_ChooseMakefile()
map <buffer> <silent> \rmc :call C_MakeClean()
map <buffer> <silent> \rme :call C_MakeExeToRun()
map <buffer> <silent> \rma :call C_MakeArguments()
map <buffer> <silent> \rp :call C_SplintCheck()
map <buffer> <silent> \rpa :call C_SplintArguments()
map <buffer> <silent> \rd :call C_Indent()
omap <buffer> <silent> \rh :call C_Hardcopy()
nmap <buffer> <silent> \rh :call C_Hardcopy()
map <buffer> <silent> \rs :call C_Settings()
vmap <buffer> <silent> \rh :call C_Hardcopy()
map <buffer> <silent> \rx :call C_XtermSize()
map <buffer> <silent> \ro :call C_Toggle_Gvim_Xterm()
map <buffer> <silent> \hp :call C_HelpCsupport()
map <buffer> <silent> \hm :call C_Help("m")
nmap <buffer> ]c <Plug>GitGutterNextHunk
xmap <buffer> ac <Plug>GitGutterTextObjectOuterVisual
omap <buffer> ac <Plug>GitGutterTextObjectOuterPending
xmap <buffer> ic <Plug>GitGutterTextObjectInnerVisual
omap <buffer> ic <Plug>GitGutterTextObjectInnerPending
vnoremap <buffer> {
map <buffer> <silent> <M-F9> :call C_Compile()
map <buffer> <silent> <F9> :call C_Link()
map <buffer> <silent> <C-F9> :call C_Run()
map <buffer> <silent> <S-F9> :call C_Arguments()
imap <buffer> <silent> g <Plug>delimitMateJumpMany
imap <buffer>  <Plug>delimitMateBS
imap <buffer> <silent> <NL> =C_JumpCtrlJ()
imap <buffer> " <Plug>delimitMate"
imap <buffer> ' <Plug>delimitMate'
imap <buffer> ( <Plug>delimitMate(
imap <buffer> ) <Plug>delimitMate)
inoremap <buffer> /* /*  */<Left><Left><Left>
inoremap <buffer> /*
imap <buffer> [ <Plug>delimitMate[
inoremap <buffer> <silent> \cl :call C_EndOfLineComment()
inoremap <buffer> <silent> \cj :call C_AdjustLineEndComm()
inoremap <buffer> <silent> \cfr :call C_InsertTemplate("comment.frame")
inoremap <buffer> <silent> \cfu :call C_InsertTemplate("comment.function")
inoremap <buffer> <silent> \cme :call C_InsertTemplate("comment.method")
inoremap <buffer> <silent> \ccl :call C_InsertTemplate("comment.class")
inoremap <buffer> <silent> \cfdi :call C_InsertTemplate("comment.file-description")
inoremap <buffer> <silent> \cfdh :call C_InsertTemplate("comment.file-description-header")
inoremap <buffer> <silent> \cd :call C_InsertDateAndTime('d')
inoremap <buffer> <silent> \ct :call C_InsertDateAndTime('dt')
inoremap <buffer> <silent> \cx :call C_CommentToggle( )
inoremap <buffer> \ccs :CFileSection 
inoremap <buffer> \chs :HFileSection 
inoremap <buffer> \ckc :KeywordComment 
inoremap <buffer> \csc :SpecialComment 
inoremap <buffer> <silent> \sd :call C_InsertTemplate("statements.do-while")
inoremap <buffer> <silent> \sf :call C_InsertTemplate("statements.for")
inoremap <buffer> <silent> \sfo :call C_InsertTemplate("statements.for-block")
inoremap <buffer> <silent> \si :call C_InsertTemplate("statements.if")
inoremap <buffer> <silent> \sif :call C_InsertTemplate("statements.if-block")
inoremap <buffer> <silent> \sie :call C_InsertTemplate("statements.if-else")
inoremap <buffer> <silent> \sife :call C_InsertTemplate("statements.if-block-else")
inoremap <buffer> <silent> \se :call C_InsertTemplate("statements.else-block")
inoremap <buffer> <silent> \sw :call C_InsertTemplate("statements.while")
inoremap <buffer> <silent> \swh :call C_InsertTemplate("statements.while-block")
inoremap <buffer> <silent> \ss :call C_InsertTemplate("statements.switch")
inoremap <buffer> <silent> \sc :call C_InsertTemplate("statements.case")
inoremap <buffer> <silent> \s{ :call C_InsertTemplate("statements.block")
inoremap <buffer> <silent> \sb :call C_InsertTemplate("statements.block")
inoremap <buffer> \ps :IncludeStdLibrary 
inoremap <buffer> \pc :IncludeC99Library 
inoremap <buffer> \+ps :IncludeCppLibrary 
inoremap <buffer> \+pc :IncludeCppC9Library 
inoremap <buffer> <silent> \p< :call C_InsertTemplate("preprocessor.include-global")
inoremap <buffer> <silent> \p" :call C_InsertTemplate("preprocessor.include-local")
inoremap <buffer> <silent> \pd :call C_InsertTemplate("preprocessor.define")
inoremap <buffer> <silent> \pu :call C_InsertTemplate("preprocessor.undefine")
inoremap <buffer> <silent> \pif :call C_InsertTemplate("preprocessor.if-endif")
inoremap <buffer> <silent> \pie :call C_InsertTemplate("preprocessor.if-else-endif")
inoremap <buffer> <silent> \pid :call C_InsertTemplate("preprocessor.ifdef-else-endif")
inoremap <buffer> <silent> \pin :call C_InsertTemplate("preprocessor.ifndef-else-endif")
inoremap <buffer> <silent> \pind :call C_InsertTemplate("preprocessor.ifndef-def-endif")
inoremap <buffer> <silent> \pi0 :call C_PPIf0("a")
inoremap <buffer> <silent> \pr0 :call C_PPIf0Remove()
inoremap <buffer> <silent> \pe :call C_InsertTemplate("preprocessor.error")
inoremap <buffer> <silent> \pl :call C_InsertTemplate("preprocessor.line")
inoremap <buffer> <silent> \pp :call C_InsertTemplate("preprocessor.pragma")
inoremap <buffer> <silent> \if :call C_InsertTemplate("idioms.function")
inoremap <buffer> <silent> \isf :call C_InsertTemplate("idioms.function-static")
inoremap <buffer> <silent> \im :call C_InsertTemplate("idioms.main")
inoremap <buffer> <silent> \i0 :call C_CodeFor("up"  )
inoremap <buffer> <silent> \in :call C_CodeFor("down")
inoremap <buffer> <silent> \ie :call C_InsertTemplate("idioms.enum")
inoremap <buffer> <silent> \is :call C_InsertTemplate("idioms.struct")
inoremap <buffer> <silent> \iu :call C_InsertTemplate("idioms.union")
inoremap <buffer> <silent> \ip :call C_InsertTemplate("idioms.printf")
inoremap <buffer> <silent> \isc :call C_InsertTemplate("idioms.scanf")
inoremap <buffer> <silent> \ica :call C_InsertTemplate("idioms.calloc")
inoremap <buffer> <silent> \ima :call C_InsertTemplate("idioms.malloc")
inoremap <buffer> <silent> \ire :call C_InsertTemplate("idioms.realloc")
inoremap <buffer> <silent> \isi :call C_InsertTemplate("idioms.sizeof")
inoremap <buffer> <silent> \ias :call C_InsertTemplate("idioms.assert")
inoremap <buffer> <silent> \ii :call C_InsertTemplate("idioms.open-input-file")
inoremap <buffer> <silent> \io :call C_InsertTemplate("idioms.open-output-file")
inoremap <buffer> <silent> \ifs :call C_InsertTemplate("idioms.fscanf")
inoremap <buffer> <silent> \ifp :call C_InsertTemplate("idioms.fprintf")
inoremap <buffer> <silent> \nr :call C_CodeSnippet("r")
inoremap <buffer> <silent> \nw :call C_CodeSnippet("w")
inoremap <buffer> <silent> \ne :call C_CodeSnippet("e")
inoremap <buffer> <silent> \np :call C_ProtoPick("function")
inoremap <buffer> <silent> \nf :call C_ProtoPick("function")
inoremap <buffer> <silent> \nm :call C_ProtoPick("method")
inoremap <buffer> <silent> \ni :call C_ProtoInsert()
inoremap <buffer> <silent> \nc :call C_ProtoClear()
inoremap <buffer> <silent> \ns :call C_ProtoShow()
inoremap <buffer> <silent> \ntl :call C_BrowseTemplateFiles("Local")
inoremap <buffer> <silent> \ntr :call C_RereadTemplates()
inoremap <buffer> \nts :CStyle 
inoremap <buffer> <silent> \+" :call C_InsertTemplate("cpp.cout-operator")
inoremap <buffer> <silent> \+co :call C_InsertTemplate("cpp.cout")
inoremap <buffer> <silent> \+c :call C_InsertTemplate("cpp.class-definition")
inoremap <buffer> <silent> \+cn :call C_InsertTemplate("cpp.class-using-new-definition")
inoremap <buffer> <silent> \+ci :call C_InsertTemplate("cpp.class-implementation")
inoremap <buffer> <silent> \+cni :call C_InsertTemplate("cpp.class-using-new-implementation")
inoremap <buffer> <silent> \+mi :call C_InsertTemplate("cpp.method-implementation")
inoremap <buffer> <silent> \+ai :call C_InsertTemplate("cpp.accessor-implementation")
inoremap <buffer> <silent> \+tc :call C_InsertTemplate("cpp.template-class-definition")
inoremap <buffer> <silent> \+tcn :call C_InsertTemplate("cpp.template-class-using-new-definition")
inoremap <buffer> <silent> \+tci :call C_InsertTemplate("cpp.template-class-implementation")
inoremap <buffer> <silent> \+tcni :call C_InsertTemplate("cpp.template-class-using-new-implementation")
inoremap <buffer> <silent> \+tmi :call C_InsertTemplate("cpp.template-method-implementation")
inoremap <buffer> <silent> \+tai :call C_InsertTemplate("cpp.template-accessor-implementation")
inoremap <buffer> <silent> \+tf :call C_InsertTemplate("cpp.template-function")
inoremap <buffer> <silent> \+ec :call C_InsertTemplate("cpp.error-class")
inoremap <buffer> <silent> \+tr :call C_InsertTemplate("cpp.try-catch")
inoremap <buffer> <silent> \+ca :call C_InsertTemplate("cpp.catch")
inoremap <buffer> <silent> \+c. :call C_InsertTemplate("cpp.catch-points")
imap <buffer> <silent> \rc :call C_Compile()
imap <buffer> <silent> \rl :call C_Link()
imap <buffer> <silent> \rr :call C_Run()
imap <buffer> <silent> \ra :call C_Arguments()
imap <buffer> <silent> \rm :call C_Make()
imap <buffer> <silent> \rmc :call C_MakeClean()
imap <buffer> <silent> \rme :call C_MakeExeToRun()
imap <buffer> <silent> \rma :call C_MakeArguments()
imap <buffer> <silent> \rp :call C_SplintCheck()
imap <buffer> <silent> \rpa :call C_SplintArguments()
imap <buffer> <silent> \rd :call C_Indent()
imap <buffer> <silent> \rh :call C_Hardcopy()
imap <buffer> <silent> \rs :call C_Settings()
imap <buffer> <silent> \rx :call C_XtermSize()
imap <buffer> <silent> \ro :call C_Toggle_Gvim_Xterm()
imap <buffer> <silent> \hp :call C_HelpCsupport()
imap <buffer> <silent> \hm :call C_Help("m")
imap <buffer> ] <Plug>delimitMate]
imap <buffer> ` <Plug>delimitMate`
inoremap <buffer> {
imap <buffer> { <Plug>delimitMate{
imap <buffer> } <Plug>delimitMate}
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal noautoindent
setlocal backupcopy=
setlocal binary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal cindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=sO:*\ -,mO:*\ \ ,exO:*/,s1:/*,mb:*,ex:*/,://
setlocal commentstring=/*%s*/
setlocal complete=.,w,b,u,t,i
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=~/.vim/plugged/c.vim/c-support/wordlists/c-c++-keywords.list,~/.vim/plugged/c.vim/c-support/wordlists/k+r.list,~/.vim/plugged/c.vim/c-support/wordlists/stl_index.list
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'cpp'
setlocal filetype=cpp
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=-1
setlocal include=
setlocal includeexpr=
setlocal indentexpr=
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=ccomplete#Complete
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal noscrollbind
setlocal shiftwidth=4
setlocal noshortname
setlocal signcolumn=auto
setlocal nosmartindent
setlocal softtabstop=0
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=%!airline#statusline(2)
setlocal suffixesadd=
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != 'cpp'
setlocal syntax=cpp
endif
setlocal tabstop=4
setlocal tagcase=
setlocal tags=
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal undolevels=-123456
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 24 - ((23 * winheight(0) + 25) / 50)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
24
normal! 04|
wincmd w
exe 'vert 1resize ' . ((&columns * 89 + 89) / 179)
exe 'vert 2resize ' . ((&columns * 89 + 89) / 179)
tabedit VAO.hpp
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winminheight=1 winheight=1 winminwidth=1 winwidth=1
exe 'vert 1resize ' . ((&columns * 89 + 89) / 179)
exe 'vert 2resize ' . ((&columns * 89 + 89) / 179)
argglobal
let s:cpo_save=&cpo
set cpo&vim
imap <buffer> <silent> <M-F9> :call C_Compile()
imap <buffer> <silent> <F9> :call C_Link()
imap <buffer> <silent> <C-F9> :call C_Run()
imap <buffer> <silent> <S-F9> :call C_Arguments()
imap <buffer> <S-Tab> <Plug>delimitMateS-Tab
imap <buffer> <S-BS> <Plug>delimitMateS-BS
imap <buffer> <BS> <Plug>delimitMateBS
nmap <buffer> <silent> <NL> i=C_JumpCtrlJ()
nmap <buffer> ,hp <Plug>GitGutterPreviewHunk
nmap <buffer> ,hu <Plug>GitGutterUndoHunk
nmap <buffer> ,hs <Plug>GitGutterStageHunk
vnoremap <buffer> /* s/*  */<Left><Left><Left>p
nmap <buffer> [c <Plug>GitGutterPrevHunk
onoremap <buffer> <silent> \cl :call C_EndOfLineComment()
nnoremap <buffer> <silent> \cl :call C_EndOfLineComment()
vnoremap <buffer> <silent> \cl :call C_EndOfLineComment()
nnoremap <buffer> <silent> \cj :call C_AdjustLineEndComm()
vnoremap <buffer> <silent> \cj :call C_AdjustLineEndComm()
noremap <buffer> <silent> \cs :call C_GetLineEndCommCol()
onoremap <buffer> <silent> \c* :call C_CodeToCommentC()
nnoremap <buffer> <silent> \c* :call C_CodeToCommentC()
vnoremap <buffer> <silent> \c* :call C_CodeToCommentC()
onoremap <buffer> <silent> \cc :call C_CodeToCommentCpp()
nnoremap <buffer> <silent> \cc :call C_CodeToCommentCpp()
vnoremap <buffer> <silent> \cc :call C_CodeToCommentCpp()
onoremap <buffer> <silent> \co :call C_CommentToCode()
nnoremap <buffer> <silent> \co :call C_CommentToCode()
vnoremap <buffer> <silent> \co :call C_CommentToCode()
noremap <buffer> <silent> \cfr :call C_InsertTemplate("comment.frame")
noremap <buffer> <silent> \cfu :call C_InsertTemplate("comment.function")
noremap <buffer> <silent> \cme :call C_InsertTemplate("comment.method")
noremap <buffer> <silent> \ccl :call C_InsertTemplate("comment.class")
noremap <buffer> <silent> \cfdi :call C_InsertTemplate("comment.file-description")
noremap <buffer> <silent> \cfdh :call C_InsertTemplate("comment.file-description-header")
onoremap <buffer> <silent> \cd :call C_InsertDateAndTime('d')
nnoremap <buffer> <silent> \cd :call C_InsertDateAndTime('d')
vnoremap <buffer> <silent> \cd s:call C_InsertDateAndTime('d')
onoremap <buffer> <silent> \ct :call C_InsertDateAndTime('dt')
nnoremap <buffer> <silent> \ct :call C_InsertDateAndTime('dt')
vnoremap <buffer> <silent> \ct s:call C_InsertDateAndTime('dt')
onoremap <buffer> <silent> \cx :call C_CommentToggle( )
nnoremap <buffer> <silent> \cx :call C_CommentToggle( )
vnoremap <buffer> <silent> \cx :call C_CommentToggle( )
noremap <buffer> \ccs :CFileSection 
noremap <buffer> \chs :HFileSection 
noremap <buffer> \ckc :KeywordComment 
noremap <buffer> \csc :SpecialComment 
onoremap <buffer> <silent> \sd :call C_InsertTemplate("statements.do-while")
nnoremap <buffer> <silent> \sd :call C_InsertTemplate("statements.do-while")
vnoremap <buffer> <silent> \sd :call C_InsertTemplate("statements.do-while", "v")
noremap <buffer> <silent> \sf :call C_InsertTemplate("statements.for")
onoremap <buffer> <silent> \sfo :call C_InsertTemplate("statements.for-block")
nnoremap <buffer> <silent> \sfo :call C_InsertTemplate("statements.for-block")
vnoremap <buffer> <silent> \sfo :call C_InsertTemplate("statements.for-block", "v")
noremap <buffer> <silent> \si :call C_InsertTemplate("statements.if")
onoremap <buffer> <silent> \sif :call C_InsertTemplate("statements.if-block")
nnoremap <buffer> <silent> \sif :call C_InsertTemplate("statements.if-block")
vnoremap <buffer> <silent> \sif :call C_InsertTemplate("statements.if-block", "v")
onoremap <buffer> <silent> \sie :call C_InsertTemplate("statements.if-else")
nnoremap <buffer> <silent> \sie :call C_InsertTemplate("statements.if-else")
vnoremap <buffer> <silent> \sie :call C_InsertTemplate("statements.if-else", "v")
onoremap <buffer> <silent> \sife :call C_InsertTemplate("statements.if-block-else")
nnoremap <buffer> <silent> \sife :call C_InsertTemplate("statements.if-block-else")
vnoremap <buffer> <silent> \sife :call C_InsertTemplate("statements.if-block-else", "v")
onoremap <buffer> <silent> \se :call C_InsertTemplate("statements.else-block")
nnoremap <buffer> <silent> \se :call C_InsertTemplate("statements.else-block")
vnoremap <buffer> <silent> \se :call C_InsertTemplate("statements.else-block", "v")
noremap <buffer> <silent> \sw :call C_InsertTemplate("statements.while")
onoremap <buffer> <silent> \swh :call C_InsertTemplate("statements.while-block")
nnoremap <buffer> <silent> \swh :call C_InsertTemplate("statements.while-block")
vnoremap <buffer> <silent> \swh :call C_InsertTemplate("statements.while-block", "v")
onoremap <buffer> <silent> \ss :call C_InsertTemplate("statements.switch")
nnoremap <buffer> <silent> \ss :call C_InsertTemplate("statements.switch")
vnoremap <buffer> <silent> \ss :call C_InsertTemplate("statements.switch", "v")
noremap <buffer> <silent> \sc :call C_InsertTemplate("statements.case")
onoremap <buffer> <silent> \s{ :call C_InsertTemplate("statements.block")
nnoremap <buffer> <silent> \s{ :call C_InsertTemplate("statements.block")
vnoremap <buffer> <silent> \s{ :call C_InsertTemplate("statements.block", "v")
onoremap <buffer> <silent> \sb :call C_InsertTemplate("statements.block")
nnoremap <buffer> <silent> \sb :call C_InsertTemplate("statements.block")
vnoremap <buffer> <silent> \sb :call C_InsertTemplate("statements.block", "v")
noremap <buffer> \ps :IncludeStdLibrary 
noremap <buffer> \pc :IncludeC99Library 
noremap <buffer> \+ps :IncludeCppLibrary 
noremap <buffer> \+pc :IncludeCppCLibrary 
noremap <buffer> <silent> \p< :call C_InsertTemplate("preprocessor.include-global")
noremap <buffer> <silent> \p" :call C_InsertTemplate("preprocessor.include-local")
noremap <buffer> <silent> \pd :call C_InsertTemplate("preprocessor.define")
noremap <buffer> <silent> \pu :call C_InsertTemplate("preprocessor.undefine")
onoremap <buffer> <silent> \pif :call C_InsertTemplate("preprocessor.if-endif")
nnoremap <buffer> <silent> \pif :call C_InsertTemplate("preprocessor.if-endif")
onoremap <buffer> <silent> \pie :call C_InsertTemplate("preprocessor.if-else-endif")
nnoremap <buffer> <silent> \pie :call C_InsertTemplate("preprocessor.if-else-endif")
onoremap <buffer> <silent> \pid :call C_InsertTemplate("preprocessor.ifdef-else-endif")
nnoremap <buffer> <silent> \pid :call C_InsertTemplate("preprocessor.ifdef-else-endif")
onoremap <buffer> <silent> \pin :call C_InsertTemplate("preprocessor.ifndef-else-endif")
nnoremap <buffer> <silent> \pin :call C_InsertTemplate("preprocessor.ifndef-else-endif")
onoremap <buffer> <silent> \pind :call C_InsertTemplate("preprocessor.ifndef-def-endif")
nnoremap <buffer> <silent> \pind :call C_InsertTemplate("preprocessor.ifndef-def-endif")
vnoremap <buffer> <silent> \pif :call C_InsertTemplate("preprocessor.if-endif", "v")
vnoremap <buffer> <silent> \pie :call C_InsertTemplate("preprocessor.if-else-endif", "v")
vnoremap <buffer> <silent> \pid :call C_InsertTemplate("preprocessor.ifdef-else-endif", "v")
vnoremap <buffer> <silent> \pin :call C_InsertTemplate("preprocessor.ifndef-else-endif", "v")
vnoremap <buffer> <silent> \pind :call C_InsertTemplate("preprocessor.ifndef-def-endif", "v")
onoremap <buffer> <silent> \pi0 :call C_PPIf0("a")
nnoremap <buffer> <silent> \pi0 :call C_PPIf0("a")
vnoremap <buffer> <silent> \pi0 :call C_PPIf0("v")
noremap <buffer> <silent> \pr0 :call C_PPIf0Remove()
noremap <buffer> <silent> \pe :call C_InsertTemplate("preprocessor.error")
noremap <buffer> <silent> \pl :call C_InsertTemplate("preprocessor.line")
noremap <buffer> <silent> \pp :call C_InsertTemplate("preprocessor.pragma")
onoremap <buffer> <silent> \if :call C_InsertTemplate("idioms.function")
nnoremap <buffer> <silent> \if :call C_InsertTemplate("idioms.function")
vnoremap <buffer> <silent> \if :call C_InsertTemplate("idioms.function", "v")
onoremap <buffer> <silent> \isf :call C_InsertTemplate("idioms.function-static")
nnoremap <buffer> <silent> \isf :call C_InsertTemplate("idioms.function-static")
vnoremap <buffer> <silent> \isf :call C_InsertTemplate("idioms.function-static", "v")
onoremap <buffer> <silent> \im :call C_InsertTemplate("idioms.main")
nnoremap <buffer> <silent> \im :call C_InsertTemplate("idioms.main")
vnoremap <buffer> <silent> \im :call C_InsertTemplate("idioms.main", "v")
onoremap <buffer> <silent> \i0 :call C_CodeFor("up"  )
nnoremap <buffer> <silent> \i0 :call C_CodeFor("up"  )
vnoremap <buffer> <silent> \i0 :call C_CodeFor("up"  )
onoremap <buffer> <silent> \in :call C_CodeFor("down")
nnoremap <buffer> <silent> \in :call C_CodeFor("down")
vnoremap <buffer> <silent> \in :call C_CodeFor("down")
onoremap <buffer> <silent> \ie :call C_InsertTemplate("idioms.enum")
nnoremap <buffer> <silent> \ie :call C_InsertTemplate("idioms.enum")
vnoremap <buffer> <silent> \ie :call C_InsertTemplate("idioms.enum"  , "v")
onoremap <buffer> <silent> \is :call C_InsertTemplate("idioms.struct")
nnoremap <buffer> <silent> \is :call C_InsertTemplate("idioms.struct")
vnoremap <buffer> <silent> \is :call C_InsertTemplate("idioms.struct", "v")
onoremap <buffer> <silent> \iu :call C_InsertTemplate("idioms.union")
nnoremap <buffer> <silent> \iu :call C_InsertTemplate("idioms.union")
vnoremap <buffer> <silent> \iu :call C_InsertTemplate("idioms.union" , "v")
noremap <buffer> <silent> \ip :call C_InsertTemplate("idioms.printf")
noremap <buffer> <silent> \isc :call C_InsertTemplate("idioms.scanf")
noremap <buffer> <silent> \ica :call C_InsertTemplate("idioms.calloc")
noremap <buffer> <silent> \ima :call C_InsertTemplate("idioms.malloc")
noremap <buffer> <silent> \ire :call C_InsertTemplate("idioms.realloc")
onoremap <buffer> <silent> \isi :call C_InsertTemplate("idioms.sizeof")
nnoremap <buffer> <silent> \isi :call C_InsertTemplate("idioms.sizeof")
vnoremap <buffer> <silent> \isi :call C_InsertTemplate("idioms.sizeof", "v")
onoremap <buffer> <silent> \ias :call C_InsertTemplate("idioms.assert")
nnoremap <buffer> <silent> \ias :call C_InsertTemplate("idioms.assert")
vnoremap <buffer> <silent> \ias :call C_InsertTemplate("idioms.assert", "v")
onoremap <buffer> <silent> \ii :call C_InsertTemplate("idioms.open-input-file")
nnoremap <buffer> <silent> \ii :call C_InsertTemplate("idioms.open-input-file")
vnoremap <buffer> <silent> \ii :call C_InsertTemplate("idioms.open-input-file", "v")
onoremap <buffer> <silent> \io :call C_InsertTemplate("idioms.open-output-file")
nnoremap <buffer> <silent> \io :call C_InsertTemplate("idioms.open-output-file")
vnoremap <buffer> <silent> \io :call C_InsertTemplate("idioms.open-output-file", "v")
noremap <buffer> <silent> \ifs :call C_InsertTemplate("idioms.fscanf")
noremap <buffer> <silent> \ifp :call C_InsertTemplate("idioms.fprintf")
noremap <buffer> <silent> \nr :call C_CodeSnippet("r")
onoremap <buffer> <silent> \nw :call C_CodeSnippet("w")
nnoremap <buffer> <silent> \nw :call C_CodeSnippet("w")
vnoremap <buffer> <silent> \nw :call C_CodeSnippet("wv")
noremap <buffer> <silent> \ne :call C_CodeSnippet("e")
onoremap <buffer> <silent> \np :call C_ProtoPick("function")
nnoremap <buffer> <silent> \np :call C_ProtoPick("function")
vnoremap <buffer> <silent> \np :call C_ProtoPick("function")
onoremap <buffer> <silent> \nf :call C_ProtoPick("function")
nnoremap <buffer> <silent> \nf :call C_ProtoPick("function")
vnoremap <buffer> <silent> \nf :call C_ProtoPick("function")
onoremap <buffer> <silent> \nm :call C_ProtoPick("method")
nnoremap <buffer> <silent> \nm :call C_ProtoPick("method")
vnoremap <buffer> <silent> \nm :call C_ProtoPick("method")
noremap <buffer> <silent> \ni :call C_ProtoInsert()
noremap <buffer> <silent> \nc :call C_ProtoClear()
noremap <buffer> <silent> \ns :call C_ProtoShow()
noremap <buffer> <silent> \ntl :call C_BrowseTemplateFiles("Local")
noremap <buffer> <silent> \ntr :call C_RereadTemplates()
noremap <buffer> \nts :CStyle 
noremap <buffer> <silent> \+" :call C_InsertTemplate("cpp.cout-operator")
noremap <buffer> <silent> \+co :call C_InsertTemplate("cpp.cout")
noremap <buffer> <silent> \+c :call C_InsertTemplate("cpp.class-definition")
noremap <buffer> <silent> \+cn :call C_InsertTemplate("cpp.class-using-new-definition")
noremap <buffer> <silent> \+ci :call C_InsertTemplate("cpp.class-implementation")
noremap <buffer> <silent> \+cni :call C_InsertTemplate("cpp.class-using-new-implementation")
noremap <buffer> <silent> \+mi :call C_InsertTemplate("cpp.method-implementation")
noremap <buffer> <silent> \+ai :call C_InsertTemplate("cpp.accessor-implementation")
noremap <buffer> <silent> \+tc :call C_InsertTemplate("cpp.template-class-definition")
noremap <buffer> <silent> \+tcn :call C_InsertTemplate("cpp.template-class-using-new-definition")
noremap <buffer> <silent> \+tci :call C_InsertTemplate("cpp.template-class-implementation")
noremap <buffer> <silent> \+tcni :call C_InsertTemplate("cpp.template-class-using-new-implementation")
noremap <buffer> <silent> \+tmi :call C_InsertTemplate("cpp.template-method-implementation")
noremap <buffer> <silent> \+tai :call C_InsertTemplate("cpp.template-accessor-implementation")
noremap <buffer> <silent> \+tf :call C_InsertTemplate("cpp.template-function")
noremap <buffer> <silent> \+ec :call C_InsertTemplate("cpp.error-class")
onoremap <buffer> <silent> \+tr :call C_InsertTemplate("cpp.try-catch")
nnoremap <buffer> <silent> \+tr :call C_InsertTemplate("cpp.try-catch")
vnoremap <buffer> <silent> \+tr :call C_InsertTemplate("cpp.try-catch", "v")
onoremap <buffer> <silent> \+ca :call C_InsertTemplate("cpp.catch")
nnoremap <buffer> <silent> \+ca :call C_InsertTemplate("cpp.catch")
vnoremap <buffer> <silent> \+ca :call C_InsertTemplate("cpp.catch", "v")
onoremap <buffer> <silent> \+c. :call C_InsertTemplate("cpp.catch-points")
nnoremap <buffer> <silent> \+c. :call C_InsertTemplate("cpp.catch-points")
vnoremap <buffer> <silent> \+c. :call C_InsertTemplate("cpp.catch-points", "v")
map <buffer> <silent> \rc :call C_Compile()
map <buffer> <silent> \rl :call C_Link()
map <buffer> <silent> \rr :call C_Run()
map <buffer> <silent> \ra :call C_Arguments()
map <buffer> <silent> \rm :call C_Make()
map <buffer> <silent> \rcm :call C_ChooseMakefile()
map <buffer> <silent> \rmc :call C_MakeClean()
map <buffer> <silent> \rme :call C_MakeExeToRun()
map <buffer> <silent> \rma :call C_MakeArguments()
map <buffer> <silent> \rp :call C_SplintCheck()
map <buffer> <silent> \rpa :call C_SplintArguments()
map <buffer> <silent> \rd :call C_Indent()
omap <buffer> <silent> \rh :call C_Hardcopy()
nmap <buffer> <silent> \rh :call C_Hardcopy()
map <buffer> <silent> \rs :call C_Settings()
vmap <buffer> <silent> \rh :call C_Hardcopy()
map <buffer> <silent> \rx :call C_XtermSize()
map <buffer> <silent> \ro :call C_Toggle_Gvim_Xterm()
map <buffer> <silent> \hp :call C_HelpCsupport()
map <buffer> <silent> \hm :call C_Help("m")
nmap <buffer> ]c <Plug>GitGutterNextHunk
xmap <buffer> ac <Plug>GitGutterTextObjectOuterVisual
omap <buffer> ac <Plug>GitGutterTextObjectOuterPending
xmap <buffer> ic <Plug>GitGutterTextObjectInnerVisual
omap <buffer> ic <Plug>GitGutterTextObjectInnerPending
vnoremap <buffer> {
map <buffer> <silent> <M-F9> :call C_Compile()
map <buffer> <silent> <F9> :call C_Link()
map <buffer> <silent> <C-F9> :call C_Run()
map <buffer> <silent> <S-F9> :call C_Arguments()
imap <buffer> <silent> g <Plug>delimitMateJumpMany
imap <buffer>  <Plug>delimitMateBS
imap <buffer> <silent> <NL> =C_JumpCtrlJ()
imap <buffer> " <Plug>delimitMate"
imap <buffer> ' <Plug>delimitMate'
imap <buffer> ( <Plug>delimitMate(
imap <buffer> ) <Plug>delimitMate)
inoremap <buffer> /* /*  */<Left><Left><Left>
inoremap <buffer> /*
imap <buffer> [ <Plug>delimitMate[
inoremap <buffer> <silent> \cl :call C_EndOfLineComment()
inoremap <buffer> <silent> \cj :call C_AdjustLineEndComm()
inoremap <buffer> <silent> \cfr :call C_InsertTemplate("comment.frame")
inoremap <buffer> <silent> \cfu :call C_InsertTemplate("comment.function")
inoremap <buffer> <silent> \cme :call C_InsertTemplate("comment.method")
inoremap <buffer> <silent> \ccl :call C_InsertTemplate("comment.class")
inoremap <buffer> <silent> \cfdi :call C_InsertTemplate("comment.file-description")
inoremap <buffer> <silent> \cfdh :call C_InsertTemplate("comment.file-description-header")
inoremap <buffer> <silent> \cd :call C_InsertDateAndTime('d')
inoremap <buffer> <silent> \ct :call C_InsertDateAndTime('dt')
inoremap <buffer> <silent> \cx :call C_CommentToggle( )
inoremap <buffer> \ccs :CFileSection 
inoremap <buffer> \chs :HFileSection 
inoremap <buffer> \ckc :KeywordComment 
inoremap <buffer> \csc :SpecialComment 
inoremap <buffer> <silent> \sd :call C_InsertTemplate("statements.do-while")
inoremap <buffer> <silent> \sf :call C_InsertTemplate("statements.for")
inoremap <buffer> <silent> \sfo :call C_InsertTemplate("statements.for-block")
inoremap <buffer> <silent> \si :call C_InsertTemplate("statements.if")
inoremap <buffer> <silent> \sif :call C_InsertTemplate("statements.if-block")
inoremap <buffer> <silent> \sie :call C_InsertTemplate("statements.if-else")
inoremap <buffer> <silent> \sife :call C_InsertTemplate("statements.if-block-else")
inoremap <buffer> <silent> \se :call C_InsertTemplate("statements.else-block")
inoremap <buffer> <silent> \sw :call C_InsertTemplate("statements.while")
inoremap <buffer> <silent> \swh :call C_InsertTemplate("statements.while-block")
inoremap <buffer> <silent> \ss :call C_InsertTemplate("statements.switch")
inoremap <buffer> <silent> \sc :call C_InsertTemplate("statements.case")
inoremap <buffer> <silent> \s{ :call C_InsertTemplate("statements.block")
inoremap <buffer> <silent> \sb :call C_InsertTemplate("statements.block")
inoremap <buffer> \ps :IncludeStdLibrary 
inoremap <buffer> \pc :IncludeC99Library 
inoremap <buffer> \+ps :IncludeCppLibrary 
inoremap <buffer> \+pc :IncludeCppC9Library 
inoremap <buffer> <silent> \p< :call C_InsertTemplate("preprocessor.include-global")
inoremap <buffer> <silent> \p" :call C_InsertTemplate("preprocessor.include-local")
inoremap <buffer> <silent> \pd :call C_InsertTemplate("preprocessor.define")
inoremap <buffer> <silent> \pu :call C_InsertTemplate("preprocessor.undefine")
inoremap <buffer> <silent> \pif :call C_InsertTemplate("preprocessor.if-endif")
inoremap <buffer> <silent> \pie :call C_InsertTemplate("preprocessor.if-else-endif")
inoremap <buffer> <silent> \pid :call C_InsertTemplate("preprocessor.ifdef-else-endif")
inoremap <buffer> <silent> \pin :call C_InsertTemplate("preprocessor.ifndef-else-endif")
inoremap <buffer> <silent> \pind :call C_InsertTemplate("preprocessor.ifndef-def-endif")
inoremap <buffer> <silent> \pi0 :call C_PPIf0("a")
inoremap <buffer> <silent> \pr0 :call C_PPIf0Remove()
inoremap <buffer> <silent> \pe :call C_InsertTemplate("preprocessor.error")
inoremap <buffer> <silent> \pl :call C_InsertTemplate("preprocessor.line")
inoremap <buffer> <silent> \pp :call C_InsertTemplate("preprocessor.pragma")
inoremap <buffer> <silent> \if :call C_InsertTemplate("idioms.function")
inoremap <buffer> <silent> \isf :call C_InsertTemplate("idioms.function-static")
inoremap <buffer> <silent> \im :call C_InsertTemplate("idioms.main")
inoremap <buffer> <silent> \i0 :call C_CodeFor("up"  )
inoremap <buffer> <silent> \in :call C_CodeFor("down")
inoremap <buffer> <silent> \ie :call C_InsertTemplate("idioms.enum")
inoremap <buffer> <silent> \is :call C_InsertTemplate("idioms.struct")
inoremap <buffer> <silent> \iu :call C_InsertTemplate("idioms.union")
inoremap <buffer> <silent> \ip :call C_InsertTemplate("idioms.printf")
inoremap <buffer> <silent> \isc :call C_InsertTemplate("idioms.scanf")
inoremap <buffer> <silent> \ica :call C_InsertTemplate("idioms.calloc")
inoremap <buffer> <silent> \ima :call C_InsertTemplate("idioms.malloc")
inoremap <buffer> <silent> \ire :call C_InsertTemplate("idioms.realloc")
inoremap <buffer> <silent> \isi :call C_InsertTemplate("idioms.sizeof")
inoremap <buffer> <silent> \ias :call C_InsertTemplate("idioms.assert")
inoremap <buffer> <silent> \ii :call C_InsertTemplate("idioms.open-input-file")
inoremap <buffer> <silent> \io :call C_InsertTemplate("idioms.open-output-file")
inoremap <buffer> <silent> \ifs :call C_InsertTemplate("idioms.fscanf")
inoremap <buffer> <silent> \ifp :call C_InsertTemplate("idioms.fprintf")
inoremap <buffer> <silent> \nr :call C_CodeSnippet("r")
inoremap <buffer> <silent> \nw :call C_CodeSnippet("w")
inoremap <buffer> <silent> \ne :call C_CodeSnippet("e")
inoremap <buffer> <silent> \np :call C_ProtoPick("function")
inoremap <buffer> <silent> \nf :call C_ProtoPick("function")
inoremap <buffer> <silent> \nm :call C_ProtoPick("method")
inoremap <buffer> <silent> \ni :call C_ProtoInsert()
inoremap <buffer> <silent> \nc :call C_ProtoClear()
inoremap <buffer> <silent> \ns :call C_ProtoShow()
inoremap <buffer> <silent> \ntl :call C_BrowseTemplateFiles("Local")
inoremap <buffer> <silent> \ntr :call C_RereadTemplates()
inoremap <buffer> \nts :CStyle 
inoremap <buffer> <silent> \+" :call C_InsertTemplate("cpp.cout-operator")
inoremap <buffer> <silent> \+co :call C_InsertTemplate("cpp.cout")
inoremap <buffer> <silent> \+c :call C_InsertTemplate("cpp.class-definition")
inoremap <buffer> <silent> \+cn :call C_InsertTemplate("cpp.class-using-new-definition")
inoremap <buffer> <silent> \+ci :call C_InsertTemplate("cpp.class-implementation")
inoremap <buffer> <silent> \+cni :call C_InsertTemplate("cpp.class-using-new-implementation")
inoremap <buffer> <silent> \+mi :call C_InsertTemplate("cpp.method-implementation")
inoremap <buffer> <silent> \+ai :call C_InsertTemplate("cpp.accessor-implementation")
inoremap <buffer> <silent> \+tc :call C_InsertTemplate("cpp.template-class-definition")
inoremap <buffer> <silent> \+tcn :call C_InsertTemplate("cpp.template-class-using-new-definition")
inoremap <buffer> <silent> \+tci :call C_InsertTemplate("cpp.template-class-implementation")
inoremap <buffer> <silent> \+tcni :call C_InsertTemplate("cpp.template-class-using-new-implementation")
inoremap <buffer> <silent> \+tmi :call C_InsertTemplate("cpp.template-method-implementation")
inoremap <buffer> <silent> \+tai :call C_InsertTemplate("cpp.template-accessor-implementation")
inoremap <buffer> <silent> \+tf :call C_InsertTemplate("cpp.template-function")
inoremap <buffer> <silent> \+ec :call C_InsertTemplate("cpp.error-class")
inoremap <buffer> <silent> \+tr :call C_InsertTemplate("cpp.try-catch")
inoremap <buffer> <silent> \+ca :call C_InsertTemplate("cpp.catch")
inoremap <buffer> <silent> \+c. :call C_InsertTemplate("cpp.catch-points")
imap <buffer> <silent> \rc :call C_Compile()
imap <buffer> <silent> \rl :call C_Link()
imap <buffer> <silent> \rr :call C_Run()
imap <buffer> <silent> \ra :call C_Arguments()
imap <buffer> <silent> \rm :call C_Make()
imap <buffer> <silent> \rmc :call C_MakeClean()
imap <buffer> <silent> \rme :call C_MakeExeToRun()
imap <buffer> <silent> \rma :call C_MakeArguments()
imap <buffer> <silent> \rp :call C_SplintCheck()
imap <buffer> <silent> \rpa :call C_SplintArguments()
imap <buffer> <silent> \rd :call C_Indent()
imap <buffer> <silent> \rh :call C_Hardcopy()
imap <buffer> <silent> \rs :call C_Settings()
imap <buffer> <silent> \rx :call C_XtermSize()
imap <buffer> <silent> \ro :call C_Toggle_Gvim_Xterm()
imap <buffer> <silent> \hp :call C_HelpCsupport()
imap <buffer> <silent> \hm :call C_Help("m")
imap <buffer> ] <Plug>delimitMate]
imap <buffer> ` <Plug>delimitMate`
inoremap <buffer> {
imap <buffer> { <Plug>delimitMate{
imap <buffer> } <Plug>delimitMate}
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal noautoindent
setlocal backupcopy=
setlocal binary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal cindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=sO:*\ -,mO:*\ \ ,exO:*/,s1:/*,mb:*,ex:*/,://
setlocal commentstring=/*%s*/
setlocal complete=.,w,b,u,t,i
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=~/.vim/plugged/c.vim/c-support/wordlists/c-c++-keywords.list,~/.vim/plugged/c.vim/c-support/wordlists/k+r.list,~/.vim/plugged/c.vim/c-support/wordlists/stl_index.list
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'cpp'
setlocal filetype=cpp
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=-1
setlocal include=
setlocal includeexpr=
setlocal indentexpr=
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=ccomplete#Complete
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal noscrollbind
setlocal shiftwidth=4
setlocal noshortname
setlocal signcolumn=auto
setlocal nosmartindent
setlocal softtabstop=0
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=%!airline#statusline(1)
setlocal suffixesadd=
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != 'cpp'
setlocal syntax=cpp
endif
setlocal tabstop=4
setlocal tagcase=
setlocal tags=
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal undolevels=-123456
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 25 - ((24 * winheight(0) + 25) / 50)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
25
normal! 0
wincmd w
argglobal
if bufexists('VAO.cpp') | buffer VAO.cpp | else | edit VAO.cpp | endif
let s:cpo_save=&cpo
set cpo&vim
imap <buffer> <silent> <M-F9> :call C_Compile()
imap <buffer> <silent> <F9> :call C_Link()
imap <buffer> <silent> <C-F9> :call C_Run()
imap <buffer> <silent> <S-F9> :call C_Arguments()
imap <buffer> <S-Tab> <Plug>delimitMateS-Tab
imap <buffer> <S-BS> <Plug>delimitMateS-BS
imap <buffer> <BS> <Plug>delimitMateBS
nmap <buffer> <silent> <NL> i=C_JumpCtrlJ()
nmap <buffer> ,hp <Plug>GitGutterPreviewHunk
nmap <buffer> ,hu <Plug>GitGutterUndoHunk
nmap <buffer> ,hs <Plug>GitGutterStageHunk
vnoremap <buffer> /* s/*  */<Left><Left><Left>p
nmap <buffer> [c <Plug>GitGutterPrevHunk
onoremap <buffer> <silent> \cl :call C_EndOfLineComment()
nnoremap <buffer> <silent> \cl :call C_EndOfLineComment()
vnoremap <buffer> <silent> \cl :call C_EndOfLineComment()
nnoremap <buffer> <silent> \cj :call C_AdjustLineEndComm()
vnoremap <buffer> <silent> \cj :call C_AdjustLineEndComm()
noremap <buffer> <silent> \cs :call C_GetLineEndCommCol()
onoremap <buffer> <silent> \c* :call C_CodeToCommentC()
nnoremap <buffer> <silent> \c* :call C_CodeToCommentC()
vnoremap <buffer> <silent> \c* :call C_CodeToCommentC()
onoremap <buffer> <silent> \cc :call C_CodeToCommentCpp()
nnoremap <buffer> <silent> \cc :call C_CodeToCommentCpp()
vnoremap <buffer> <silent> \cc :call C_CodeToCommentCpp()
onoremap <buffer> <silent> \co :call C_CommentToCode()
nnoremap <buffer> <silent> \co :call C_CommentToCode()
vnoremap <buffer> <silent> \co :call C_CommentToCode()
noremap <buffer> <silent> \cfr :call C_InsertTemplate("comment.frame")
noremap <buffer> <silent> \cfu :call C_InsertTemplate("comment.function")
noremap <buffer> <silent> \cme :call C_InsertTemplate("comment.method")
noremap <buffer> <silent> \ccl :call C_InsertTemplate("comment.class")
noremap <buffer> <silent> \cfdi :call C_InsertTemplate("comment.file-description")
noremap <buffer> <silent> \cfdh :call C_InsertTemplate("comment.file-description-header")
onoremap <buffer> <silent> \cd :call C_InsertDateAndTime('d')
nnoremap <buffer> <silent> \cd :call C_InsertDateAndTime('d')
vnoremap <buffer> <silent> \cd s:call C_InsertDateAndTime('d')
onoremap <buffer> <silent> \ct :call C_InsertDateAndTime('dt')
nnoremap <buffer> <silent> \ct :call C_InsertDateAndTime('dt')
vnoremap <buffer> <silent> \ct s:call C_InsertDateAndTime('dt')
onoremap <buffer> <silent> \cx :call C_CommentToggle( )
nnoremap <buffer> <silent> \cx :call C_CommentToggle( )
vnoremap <buffer> <silent> \cx :call C_CommentToggle( )
noremap <buffer> \ccs :CFileSection 
noremap <buffer> \chs :HFileSection 
noremap <buffer> \ckc :KeywordComment 
noremap <buffer> \csc :SpecialComment 
onoremap <buffer> <silent> \sd :call C_InsertTemplate("statements.do-while")
nnoremap <buffer> <silent> \sd :call C_InsertTemplate("statements.do-while")
vnoremap <buffer> <silent> \sd :call C_InsertTemplate("statements.do-while", "v")
noremap <buffer> <silent> \sf :call C_InsertTemplate("statements.for")
onoremap <buffer> <silent> \sfo :call C_InsertTemplate("statements.for-block")
nnoremap <buffer> <silent> \sfo :call C_InsertTemplate("statements.for-block")
vnoremap <buffer> <silent> \sfo :call C_InsertTemplate("statements.for-block", "v")
noremap <buffer> <silent> \si :call C_InsertTemplate("statements.if")
onoremap <buffer> <silent> \sif :call C_InsertTemplate("statements.if-block")
nnoremap <buffer> <silent> \sif :call C_InsertTemplate("statements.if-block")
vnoremap <buffer> <silent> \sif :call C_InsertTemplate("statements.if-block", "v")
onoremap <buffer> <silent> \sie :call C_InsertTemplate("statements.if-else")
nnoremap <buffer> <silent> \sie :call C_InsertTemplate("statements.if-else")
vnoremap <buffer> <silent> \sie :call C_InsertTemplate("statements.if-else", "v")
onoremap <buffer> <silent> \sife :call C_InsertTemplate("statements.if-block-else")
nnoremap <buffer> <silent> \sife :call C_InsertTemplate("statements.if-block-else")
vnoremap <buffer> <silent> \sife :call C_InsertTemplate("statements.if-block-else", "v")
onoremap <buffer> <silent> \se :call C_InsertTemplate("statements.else-block")
nnoremap <buffer> <silent> \se :call C_InsertTemplate("statements.else-block")
vnoremap <buffer> <silent> \se :call C_InsertTemplate("statements.else-block", "v")
noremap <buffer> <silent> \sw :call C_InsertTemplate("statements.while")
onoremap <buffer> <silent> \swh :call C_InsertTemplate("statements.while-block")
nnoremap <buffer> <silent> \swh :call C_InsertTemplate("statements.while-block")
vnoremap <buffer> <silent> \swh :call C_InsertTemplate("statements.while-block", "v")
onoremap <buffer> <silent> \ss :call C_InsertTemplate("statements.switch")
nnoremap <buffer> <silent> \ss :call C_InsertTemplate("statements.switch")
vnoremap <buffer> <silent> \ss :call C_InsertTemplate("statements.switch", "v")
noremap <buffer> <silent> \sc :call C_InsertTemplate("statements.case")
onoremap <buffer> <silent> \s{ :call C_InsertTemplate("statements.block")
nnoremap <buffer> <silent> \s{ :call C_InsertTemplate("statements.block")
vnoremap <buffer> <silent> \s{ :call C_InsertTemplate("statements.block", "v")
onoremap <buffer> <silent> \sb :call C_InsertTemplate("statements.block")
nnoremap <buffer> <silent> \sb :call C_InsertTemplate("statements.block")
vnoremap <buffer> <silent> \sb :call C_InsertTemplate("statements.block", "v")
noremap <buffer> \ps :IncludeStdLibrary 
noremap <buffer> \pc :IncludeC99Library 
noremap <buffer> \+ps :IncludeCppLibrary 
noremap <buffer> \+pc :IncludeCppCLibrary 
noremap <buffer> <silent> \p< :call C_InsertTemplate("preprocessor.include-global")
noremap <buffer> <silent> \p" :call C_InsertTemplate("preprocessor.include-local")
noremap <buffer> <silent> \pd :call C_InsertTemplate("preprocessor.define")
noremap <buffer> <silent> \pu :call C_InsertTemplate("preprocessor.undefine")
onoremap <buffer> <silent> \pif :call C_InsertTemplate("preprocessor.if-endif")
nnoremap <buffer> <silent> \pif :call C_InsertTemplate("preprocessor.if-endif")
onoremap <buffer> <silent> \pie :call C_InsertTemplate("preprocessor.if-else-endif")
nnoremap <buffer> <silent> \pie :call C_InsertTemplate("preprocessor.if-else-endif")
onoremap <buffer> <silent> \pid :call C_InsertTemplate("preprocessor.ifdef-else-endif")
nnoremap <buffer> <silent> \pid :call C_InsertTemplate("preprocessor.ifdef-else-endif")
onoremap <buffer> <silent> \pin :call C_InsertTemplate("preprocessor.ifndef-else-endif")
nnoremap <buffer> <silent> \pin :call C_InsertTemplate("preprocessor.ifndef-else-endif")
onoremap <buffer> <silent> \pind :call C_InsertTemplate("preprocessor.ifndef-def-endif")
nnoremap <buffer> <silent> \pind :call C_InsertTemplate("preprocessor.ifndef-def-endif")
vnoremap <buffer> <silent> \pif :call C_InsertTemplate("preprocessor.if-endif", "v")
vnoremap <buffer> <silent> \pie :call C_InsertTemplate("preprocessor.if-else-endif", "v")
vnoremap <buffer> <silent> \pid :call C_InsertTemplate("preprocessor.ifdef-else-endif", "v")
vnoremap <buffer> <silent> \pin :call C_InsertTemplate("preprocessor.ifndef-else-endif", "v")
vnoremap <buffer> <silent> \pind :call C_InsertTemplate("preprocessor.ifndef-def-endif", "v")
onoremap <buffer> <silent> \pi0 :call C_PPIf0("a")
nnoremap <buffer> <silent> \pi0 :call C_PPIf0("a")
vnoremap <buffer> <silent> \pi0 :call C_PPIf0("v")
noremap <buffer> <silent> \pr0 :call C_PPIf0Remove()
noremap <buffer> <silent> \pe :call C_InsertTemplate("preprocessor.error")
noremap <buffer> <silent> \pl :call C_InsertTemplate("preprocessor.line")
noremap <buffer> <silent> \pp :call C_InsertTemplate("preprocessor.pragma")
onoremap <buffer> <silent> \if :call C_InsertTemplate("idioms.function")
nnoremap <buffer> <silent> \if :call C_InsertTemplate("idioms.function")
vnoremap <buffer> <silent> \if :call C_InsertTemplate("idioms.function", "v")
onoremap <buffer> <silent> \isf :call C_InsertTemplate("idioms.function-static")
nnoremap <buffer> <silent> \isf :call C_InsertTemplate("idioms.function-static")
vnoremap <buffer> <silent> \isf :call C_InsertTemplate("idioms.function-static", "v")
onoremap <buffer> <silent> \im :call C_InsertTemplate("idioms.main")
nnoremap <buffer> <silent> \im :call C_InsertTemplate("idioms.main")
vnoremap <buffer> <silent> \im :call C_InsertTemplate("idioms.main", "v")
onoremap <buffer> <silent> \i0 :call C_CodeFor("up"  )
nnoremap <buffer> <silent> \i0 :call C_CodeFor("up"  )
vnoremap <buffer> <silent> \i0 :call C_CodeFor("up"  )
onoremap <buffer> <silent> \in :call C_CodeFor("down")
nnoremap <buffer> <silent> \in :call C_CodeFor("down")
vnoremap <buffer> <silent> \in :call C_CodeFor("down")
onoremap <buffer> <silent> \ie :call C_InsertTemplate("idioms.enum")
nnoremap <buffer> <silent> \ie :call C_InsertTemplate("idioms.enum")
vnoremap <buffer> <silent> \ie :call C_InsertTemplate("idioms.enum"  , "v")
onoremap <buffer> <silent> \is :call C_InsertTemplate("idioms.struct")
nnoremap <buffer> <silent> \is :call C_InsertTemplate("idioms.struct")
vnoremap <buffer> <silent> \is :call C_InsertTemplate("idioms.struct", "v")
onoremap <buffer> <silent> \iu :call C_InsertTemplate("idioms.union")
nnoremap <buffer> <silent> \iu :call C_InsertTemplate("idioms.union")
vnoremap <buffer> <silent> \iu :call C_InsertTemplate("idioms.union" , "v")
noremap <buffer> <silent> \ip :call C_InsertTemplate("idioms.printf")
noremap <buffer> <silent> \isc :call C_InsertTemplate("idioms.scanf")
noremap <buffer> <silent> \ica :call C_InsertTemplate("idioms.calloc")
noremap <buffer> <silent> \ima :call C_InsertTemplate("idioms.malloc")
noremap <buffer> <silent> \ire :call C_InsertTemplate("idioms.realloc")
onoremap <buffer> <silent> \isi :call C_InsertTemplate("idioms.sizeof")
nnoremap <buffer> <silent> \isi :call C_InsertTemplate("idioms.sizeof")
vnoremap <buffer> <silent> \isi :call C_InsertTemplate("idioms.sizeof", "v")
onoremap <buffer> <silent> \ias :call C_InsertTemplate("idioms.assert")
nnoremap <buffer> <silent> \ias :call C_InsertTemplate("idioms.assert")
vnoremap <buffer> <silent> \ias :call C_InsertTemplate("idioms.assert", "v")
onoremap <buffer> <silent> \ii :call C_InsertTemplate("idioms.open-input-file")
nnoremap <buffer> <silent> \ii :call C_InsertTemplate("idioms.open-input-file")
vnoremap <buffer> <silent> \ii :call C_InsertTemplate("idioms.open-input-file", "v")
onoremap <buffer> <silent> \io :call C_InsertTemplate("idioms.open-output-file")
nnoremap <buffer> <silent> \io :call C_InsertTemplate("idioms.open-output-file")
vnoremap <buffer> <silent> \io :call C_InsertTemplate("idioms.open-output-file", "v")
noremap <buffer> <silent> \ifs :call C_InsertTemplate("idioms.fscanf")
noremap <buffer> <silent> \ifp :call C_InsertTemplate("idioms.fprintf")
noremap <buffer> <silent> \nr :call C_CodeSnippet("r")
onoremap <buffer> <silent> \nw :call C_CodeSnippet("w")
nnoremap <buffer> <silent> \nw :call C_CodeSnippet("w")
vnoremap <buffer> <silent> \nw :call C_CodeSnippet("wv")
noremap <buffer> <silent> \ne :call C_CodeSnippet("e")
onoremap <buffer> <silent> \np :call C_ProtoPick("function")
nnoremap <buffer> <silent> \np :call C_ProtoPick("function")
vnoremap <buffer> <silent> \np :call C_ProtoPick("function")
onoremap <buffer> <silent> \nf :call C_ProtoPick("function")
nnoremap <buffer> <silent> \nf :call C_ProtoPick("function")
vnoremap <buffer> <silent> \nf :call C_ProtoPick("function")
onoremap <buffer> <silent> \nm :call C_ProtoPick("method")
nnoremap <buffer> <silent> \nm :call C_ProtoPick("method")
vnoremap <buffer> <silent> \nm :call C_ProtoPick("method")
noremap <buffer> <silent> \ni :call C_ProtoInsert()
noremap <buffer> <silent> \nc :call C_ProtoClear()
noremap <buffer> <silent> \ns :call C_ProtoShow()
noremap <buffer> <silent> \ntl :call C_BrowseTemplateFiles("Local")
noremap <buffer> <silent> \ntr :call C_RereadTemplates()
noremap <buffer> \nts :CStyle 
noremap <buffer> <silent> \+" :call C_InsertTemplate("cpp.cout-operator")
noremap <buffer> <silent> \+co :call C_InsertTemplate("cpp.cout")
noremap <buffer> <silent> \+c :call C_InsertTemplate("cpp.class-definition")
noremap <buffer> <silent> \+cn :call C_InsertTemplate("cpp.class-using-new-definition")
noremap <buffer> <silent> \+ci :call C_InsertTemplate("cpp.class-implementation")
noremap <buffer> <silent> \+cni :call C_InsertTemplate("cpp.class-using-new-implementation")
noremap <buffer> <silent> \+mi :call C_InsertTemplate("cpp.method-implementation")
noremap <buffer> <silent> \+ai :call C_InsertTemplate("cpp.accessor-implementation")
noremap <buffer> <silent> \+tc :call C_InsertTemplate("cpp.template-class-definition")
noremap <buffer> <silent> \+tcn :call C_InsertTemplate("cpp.template-class-using-new-definition")
noremap <buffer> <silent> \+tci :call C_InsertTemplate("cpp.template-class-implementation")
noremap <buffer> <silent> \+tcni :call C_InsertTemplate("cpp.template-class-using-new-implementation")
noremap <buffer> <silent> \+tmi :call C_InsertTemplate("cpp.template-method-implementation")
noremap <buffer> <silent> \+tai :call C_InsertTemplate("cpp.template-accessor-implementation")
noremap <buffer> <silent> \+tf :call C_InsertTemplate("cpp.template-function")
noremap <buffer> <silent> \+ec :call C_InsertTemplate("cpp.error-class")
onoremap <buffer> <silent> \+tr :call C_InsertTemplate("cpp.try-catch")
nnoremap <buffer> <silent> \+tr :call C_InsertTemplate("cpp.try-catch")
vnoremap <buffer> <silent> \+tr :call C_InsertTemplate("cpp.try-catch", "v")
onoremap <buffer> <silent> \+ca :call C_InsertTemplate("cpp.catch")
nnoremap <buffer> <silent> \+ca :call C_InsertTemplate("cpp.catch")
vnoremap <buffer> <silent> \+ca :call C_InsertTemplate("cpp.catch", "v")
onoremap <buffer> <silent> \+c. :call C_InsertTemplate("cpp.catch-points")
nnoremap <buffer> <silent> \+c. :call C_InsertTemplate("cpp.catch-points")
vnoremap <buffer> <silent> \+c. :call C_InsertTemplate("cpp.catch-points", "v")
map <buffer> <silent> \rc :call C_Compile()
map <buffer> <silent> \rl :call C_Link()
map <buffer> <silent> \rr :call C_Run()
map <buffer> <silent> \ra :call C_Arguments()
map <buffer> <silent> \rm :call C_Make()
map <buffer> <silent> \rcm :call C_ChooseMakefile()
map <buffer> <silent> \rmc :call C_MakeClean()
map <buffer> <silent> \rme :call C_MakeExeToRun()
map <buffer> <silent> \rma :call C_MakeArguments()
map <buffer> <silent> \rp :call C_SplintCheck()
map <buffer> <silent> \rpa :call C_SplintArguments()
map <buffer> <silent> \rd :call C_Indent()
omap <buffer> <silent> \rh :call C_Hardcopy()
nmap <buffer> <silent> \rh :call C_Hardcopy()
map <buffer> <silent> \rs :call C_Settings()
vmap <buffer> <silent> \rh :call C_Hardcopy()
map <buffer> <silent> \rx :call C_XtermSize()
map <buffer> <silent> \ro :call C_Toggle_Gvim_Xterm()
map <buffer> <silent> \hp :call C_HelpCsupport()
map <buffer> <silent> \hm :call C_Help("m")
nmap <buffer> ]c <Plug>GitGutterNextHunk
xmap <buffer> ac <Plug>GitGutterTextObjectOuterVisual
omap <buffer> ac <Plug>GitGutterTextObjectOuterPending
xmap <buffer> ic <Plug>GitGutterTextObjectInnerVisual
omap <buffer> ic <Plug>GitGutterTextObjectInnerPending
vnoremap <buffer> {
map <buffer> <silent> <M-F9> :call C_Compile()
map <buffer> <silent> <F9> :call C_Link()
map <buffer> <silent> <C-F9> :call C_Run()
map <buffer> <silent> <S-F9> :call C_Arguments()
imap <buffer> <silent> g <Plug>delimitMateJumpMany
imap <buffer>  <Plug>delimitMateBS
imap <buffer> <silent> <NL> =C_JumpCtrlJ()
imap <buffer> " <Plug>delimitMate"
imap <buffer> ' <Plug>delimitMate'
imap <buffer> ( <Plug>delimitMate(
imap <buffer> ) <Plug>delimitMate)
inoremap <buffer> /* /*  */<Left><Left><Left>
inoremap <buffer> /*
imap <buffer> [ <Plug>delimitMate[
inoremap <buffer> <silent> \cl :call C_EndOfLineComment()
inoremap <buffer> <silent> \cj :call C_AdjustLineEndComm()
inoremap <buffer> <silent> \cfr :call C_InsertTemplate("comment.frame")
inoremap <buffer> <silent> \cfu :call C_InsertTemplate("comment.function")
inoremap <buffer> <silent> \cme :call C_InsertTemplate("comment.method")
inoremap <buffer> <silent> \ccl :call C_InsertTemplate("comment.class")
inoremap <buffer> <silent> \cfdi :call C_InsertTemplate("comment.file-description")
inoremap <buffer> <silent> \cfdh :call C_InsertTemplate("comment.file-description-header")
inoremap <buffer> <silent> \cd :call C_InsertDateAndTime('d')
inoremap <buffer> <silent> \ct :call C_InsertDateAndTime('dt')
inoremap <buffer> <silent> \cx :call C_CommentToggle( )
inoremap <buffer> \ccs :CFileSection 
inoremap <buffer> \chs :HFileSection 
inoremap <buffer> \ckc :KeywordComment 
inoremap <buffer> \csc :SpecialComment 
inoremap <buffer> <silent> \sd :call C_InsertTemplate("statements.do-while")
inoremap <buffer> <silent> \sf :call C_InsertTemplate("statements.for")
inoremap <buffer> <silent> \sfo :call C_InsertTemplate("statements.for-block")
inoremap <buffer> <silent> \si :call C_InsertTemplate("statements.if")
inoremap <buffer> <silent> \sif :call C_InsertTemplate("statements.if-block")
inoremap <buffer> <silent> \sie :call C_InsertTemplate("statements.if-else")
inoremap <buffer> <silent> \sife :call C_InsertTemplate("statements.if-block-else")
inoremap <buffer> <silent> \se :call C_InsertTemplate("statements.else-block")
inoremap <buffer> <silent> \sw :call C_InsertTemplate("statements.while")
inoremap <buffer> <silent> \swh :call C_InsertTemplate("statements.while-block")
inoremap <buffer> <silent> \ss :call C_InsertTemplate("statements.switch")
inoremap <buffer> <silent> \sc :call C_InsertTemplate("statements.case")
inoremap <buffer> <silent> \s{ :call C_InsertTemplate("statements.block")
inoremap <buffer> <silent> \sb :call C_InsertTemplate("statements.block")
inoremap <buffer> \ps :IncludeStdLibrary 
inoremap <buffer> \pc :IncludeC99Library 
inoremap <buffer> \+ps :IncludeCppLibrary 
inoremap <buffer> \+pc :IncludeCppC9Library 
inoremap <buffer> <silent> \p< :call C_InsertTemplate("preprocessor.include-global")
inoremap <buffer> <silent> \p" :call C_InsertTemplate("preprocessor.include-local")
inoremap <buffer> <silent> \pd :call C_InsertTemplate("preprocessor.define")
inoremap <buffer> <silent> \pu :call C_InsertTemplate("preprocessor.undefine")
inoremap <buffer> <silent> \pif :call C_InsertTemplate("preprocessor.if-endif")
inoremap <buffer> <silent> \pie :call C_InsertTemplate("preprocessor.if-else-endif")
inoremap <buffer> <silent> \pid :call C_InsertTemplate("preprocessor.ifdef-else-endif")
inoremap <buffer> <silent> \pin :call C_InsertTemplate("preprocessor.ifndef-else-endif")
inoremap <buffer> <silent> \pind :call C_InsertTemplate("preprocessor.ifndef-def-endif")
inoremap <buffer> <silent> \pi0 :call C_PPIf0("a")
inoremap <buffer> <silent> \pr0 :call C_PPIf0Remove()
inoremap <buffer> <silent> \pe :call C_InsertTemplate("preprocessor.error")
inoremap <buffer> <silent> \pl :call C_InsertTemplate("preprocessor.line")
inoremap <buffer> <silent> \pp :call C_InsertTemplate("preprocessor.pragma")
inoremap <buffer> <silent> \if :call C_InsertTemplate("idioms.function")
inoremap <buffer> <silent> \isf :call C_InsertTemplate("idioms.function-static")
inoremap <buffer> <silent> \im :call C_InsertTemplate("idioms.main")
inoremap <buffer> <silent> \i0 :call C_CodeFor("up"  )
inoremap <buffer> <silent> \in :call C_CodeFor("down")
inoremap <buffer> <silent> \ie :call C_InsertTemplate("idioms.enum")
inoremap <buffer> <silent> \is :call C_InsertTemplate("idioms.struct")
inoremap <buffer> <silent> \iu :call C_InsertTemplate("idioms.union")
inoremap <buffer> <silent> \ip :call C_InsertTemplate("idioms.printf")
inoremap <buffer> <silent> \isc :call C_InsertTemplate("idioms.scanf")
inoremap <buffer> <silent> \ica :call C_InsertTemplate("idioms.calloc")
inoremap <buffer> <silent> \ima :call C_InsertTemplate("idioms.malloc")
inoremap <buffer> <silent> \ire :call C_InsertTemplate("idioms.realloc")
inoremap <buffer> <silent> \isi :call C_InsertTemplate("idioms.sizeof")
inoremap <buffer> <silent> \ias :call C_InsertTemplate("idioms.assert")
inoremap <buffer> <silent> \ii :call C_InsertTemplate("idioms.open-input-file")
inoremap <buffer> <silent> \io :call C_InsertTemplate("idioms.open-output-file")
inoremap <buffer> <silent> \ifs :call C_InsertTemplate("idioms.fscanf")
inoremap <buffer> <silent> \ifp :call C_InsertTemplate("idioms.fprintf")
inoremap <buffer> <silent> \nr :call C_CodeSnippet("r")
inoremap <buffer> <silent> \nw :call C_CodeSnippet("w")
inoremap <buffer> <silent> \ne :call C_CodeSnippet("e")
inoremap <buffer> <silent> \np :call C_ProtoPick("function")
inoremap <buffer> <silent> \nf :call C_ProtoPick("function")
inoremap <buffer> <silent> \nm :call C_ProtoPick("method")
inoremap <buffer> <silent> \ni :call C_ProtoInsert()
inoremap <buffer> <silent> \nc :call C_ProtoClear()
inoremap <buffer> <silent> \ns :call C_ProtoShow()
inoremap <buffer> <silent> \ntl :call C_BrowseTemplateFiles("Local")
inoremap <buffer> <silent> \ntr :call C_RereadTemplates()
inoremap <buffer> \nts :CStyle 
inoremap <buffer> <silent> \+" :call C_InsertTemplate("cpp.cout-operator")
inoremap <buffer> <silent> \+co :call C_InsertTemplate("cpp.cout")
inoremap <buffer> <silent> \+c :call C_InsertTemplate("cpp.class-definition")
inoremap <buffer> <silent> \+cn :call C_InsertTemplate("cpp.class-using-new-definition")
inoremap <buffer> <silent> \+ci :call C_InsertTemplate("cpp.class-implementation")
inoremap <buffer> <silent> \+cni :call C_InsertTemplate("cpp.class-using-new-implementation")
inoremap <buffer> <silent> \+mi :call C_InsertTemplate("cpp.method-implementation")
inoremap <buffer> <silent> \+ai :call C_InsertTemplate("cpp.accessor-implementation")
inoremap <buffer> <silent> \+tc :call C_InsertTemplate("cpp.template-class-definition")
inoremap <buffer> <silent> \+tcn :call C_InsertTemplate("cpp.template-class-using-new-definition")
inoremap <buffer> <silent> \+tci :call C_InsertTemplate("cpp.template-class-implementation")
inoremap <buffer> <silent> \+tcni :call C_InsertTemplate("cpp.template-class-using-new-implementation")
inoremap <buffer> <silent> \+tmi :call C_InsertTemplate("cpp.template-method-implementation")
inoremap <buffer> <silent> \+tai :call C_InsertTemplate("cpp.template-accessor-implementation")
inoremap <buffer> <silent> \+tf :call C_InsertTemplate("cpp.template-function")
inoremap <buffer> <silent> \+ec :call C_InsertTemplate("cpp.error-class")
inoremap <buffer> <silent> \+tr :call C_InsertTemplate("cpp.try-catch")
inoremap <buffer> <silent> \+ca :call C_InsertTemplate("cpp.catch")
inoremap <buffer> <silent> \+c. :call C_InsertTemplate("cpp.catch-points")
imap <buffer> <silent> \rc :call C_Compile()
imap <buffer> <silent> \rl :call C_Link()
imap <buffer> <silent> \rr :call C_Run()
imap <buffer> <silent> \ra :call C_Arguments()
imap <buffer> <silent> \rm :call C_Make()
imap <buffer> <silent> \rmc :call C_MakeClean()
imap <buffer> <silent> \rme :call C_MakeExeToRun()
imap <buffer> <silent> \rma :call C_MakeArguments()
imap <buffer> <silent> \rp :call C_SplintCheck()
imap <buffer> <silent> \rpa :call C_SplintArguments()
imap <buffer> <silent> \rd :call C_Indent()
imap <buffer> <silent> \rh :call C_Hardcopy()
imap <buffer> <silent> \rs :call C_Settings()
imap <buffer> <silent> \rx :call C_XtermSize()
imap <buffer> <silent> \ro :call C_Toggle_Gvim_Xterm()
imap <buffer> <silent> \hp :call C_HelpCsupport()
imap <buffer> <silent> \hm :call C_Help("m")
imap <buffer> ] <Plug>delimitMate]
imap <buffer> ` <Plug>delimitMate`
inoremap <buffer> {
imap <buffer> { <Plug>delimitMate{
imap <buffer> } <Plug>delimitMate}
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal noautoindent
setlocal backupcopy=
setlocal binary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal cindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=sO:*\ -,mO:*\ \ ,exO:*/,s1:/*,mb:*,ex:*/,://
setlocal commentstring=/*%s*/
setlocal complete=.,w,b,u,t,i
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=~/.vim/plugged/c.vim/c-support/wordlists/c-c++-keywords.list,~/.vim/plugged/c.vim/c-support/wordlists/k+r.list,~/.vim/plugged/c.vim/c-support/wordlists/stl_index.list
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'cpp'
setlocal filetype=cpp
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=-1
setlocal include=
setlocal includeexpr=
setlocal indentexpr=
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=ccomplete#Complete
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal noscrollbind
setlocal shiftwidth=4
setlocal noshortname
setlocal signcolumn=auto
setlocal nosmartindent
setlocal softtabstop=0
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=%!airline#statusline(2)
setlocal suffixesadd=
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != 'cpp'
setlocal syntax=cpp
endif
setlocal tabstop=4
setlocal tagcase=
setlocal tags=
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal undolevels=-123456
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 24 - ((3 * winheight(0) + 25) / 50)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
24
normal! 012|
wincmd w
exe 'vert 1resize ' . ((&columns * 89 + 89) / 179)
exe 'vert 2resize ' . ((&columns * 89 + 89) / 179)
tabedit Camera.hpp
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winminheight=1 winheight=1 winminwidth=1 winwidth=1
exe 'vert 1resize ' . ((&columns * 89 + 89) / 179)
exe 'vert 2resize ' . ((&columns * 89 + 89) / 179)
argglobal
let s:cpo_save=&cpo
set cpo&vim
imap <buffer> <silent> <M-F9> :call C_Compile()
imap <buffer> <silent> <F9> :call C_Link()
imap <buffer> <silent> <C-F9> :call C_Run()
imap <buffer> <silent> <S-F9> :call C_Arguments()
imap <buffer> <S-Tab> <Plug>delimitMateS-Tab
imap <buffer> <S-BS> <Plug>delimitMateS-BS
imap <buffer> <BS> <Plug>delimitMateBS
nmap <buffer> <silent> <NL> i=C_JumpCtrlJ()
nmap <buffer> ,hp <Plug>GitGutterPreviewHunk
nmap <buffer> ,hu <Plug>GitGutterUndoHunk
nmap <buffer> ,hs <Plug>GitGutterStageHunk
vnoremap <buffer> /* s/*  */<Left><Left><Left>p
nmap <buffer> [c <Plug>GitGutterPrevHunk
onoremap <buffer> <silent> \cl :call C_EndOfLineComment()
nnoremap <buffer> <silent> \cl :call C_EndOfLineComment()
vnoremap <buffer> <silent> \cl :call C_EndOfLineComment()
nnoremap <buffer> <silent> \cj :call C_AdjustLineEndComm()
vnoremap <buffer> <silent> \cj :call C_AdjustLineEndComm()
noremap <buffer> <silent> \cs :call C_GetLineEndCommCol()
onoremap <buffer> <silent> \c* :call C_CodeToCommentC()
nnoremap <buffer> <silent> \c* :call C_CodeToCommentC()
vnoremap <buffer> <silent> \c* :call C_CodeToCommentC()
onoremap <buffer> <silent> \cc :call C_CodeToCommentCpp()
nnoremap <buffer> <silent> \cc :call C_CodeToCommentCpp()
vnoremap <buffer> <silent> \cc :call C_CodeToCommentCpp()
onoremap <buffer> <silent> \co :call C_CommentToCode()
nnoremap <buffer> <silent> \co :call C_CommentToCode()
vnoremap <buffer> <silent> \co :call C_CommentToCode()
noremap <buffer> <silent> \cfr :call C_InsertTemplate("comment.frame")
noremap <buffer> <silent> \cfu :call C_InsertTemplate("comment.function")
noremap <buffer> <silent> \cme :call C_InsertTemplate("comment.method")
noremap <buffer> <silent> \ccl :call C_InsertTemplate("comment.class")
noremap <buffer> <silent> \cfdi :call C_InsertTemplate("comment.file-description")
noremap <buffer> <silent> \cfdh :call C_InsertTemplate("comment.file-description-header")
onoremap <buffer> <silent> \cd :call C_InsertDateAndTime('d')
nnoremap <buffer> <silent> \cd :call C_InsertDateAndTime('d')
vnoremap <buffer> <silent> \cd s:call C_InsertDateAndTime('d')
onoremap <buffer> <silent> \ct :call C_InsertDateAndTime('dt')
nnoremap <buffer> <silent> \ct :call C_InsertDateAndTime('dt')
vnoremap <buffer> <silent> \ct s:call C_InsertDateAndTime('dt')
onoremap <buffer> <silent> \cx :call C_CommentToggle( )
nnoremap <buffer> <silent> \cx :call C_CommentToggle( )
vnoremap <buffer> <silent> \cx :call C_CommentToggle( )
noremap <buffer> \ccs :CFileSection 
noremap <buffer> \chs :HFileSection 
noremap <buffer> \ckc :KeywordComment 
noremap <buffer> \csc :SpecialComment 
onoremap <buffer> <silent> \sd :call C_InsertTemplate("statements.do-while")
nnoremap <buffer> <silent> \sd :call C_InsertTemplate("statements.do-while")
vnoremap <buffer> <silent> \sd :call C_InsertTemplate("statements.do-while", "v")
noremap <buffer> <silent> \sf :call C_InsertTemplate("statements.for")
onoremap <buffer> <silent> \sfo :call C_InsertTemplate("statements.for-block")
nnoremap <buffer> <silent> \sfo :call C_InsertTemplate("statements.for-block")
vnoremap <buffer> <silent> \sfo :call C_InsertTemplate("statements.for-block", "v")
noremap <buffer> <silent> \si :call C_InsertTemplate("statements.if")
onoremap <buffer> <silent> \sif :call C_InsertTemplate("statements.if-block")
nnoremap <buffer> <silent> \sif :call C_InsertTemplate("statements.if-block")
vnoremap <buffer> <silent> \sif :call C_InsertTemplate("statements.if-block", "v")
onoremap <buffer> <silent> \sie :call C_InsertTemplate("statements.if-else")
nnoremap <buffer> <silent> \sie :call C_InsertTemplate("statements.if-else")
vnoremap <buffer> <silent> \sie :call C_InsertTemplate("statements.if-else", "v")
onoremap <buffer> <silent> \sife :call C_InsertTemplate("statements.if-block-else")
nnoremap <buffer> <silent> \sife :call C_InsertTemplate("statements.if-block-else")
vnoremap <buffer> <silent> \sife :call C_InsertTemplate("statements.if-block-else", "v")
onoremap <buffer> <silent> \se :call C_InsertTemplate("statements.else-block")
nnoremap <buffer> <silent> \se :call C_InsertTemplate("statements.else-block")
vnoremap <buffer> <silent> \se :call C_InsertTemplate("statements.else-block", "v")
noremap <buffer> <silent> \sw :call C_InsertTemplate("statements.while")
onoremap <buffer> <silent> \swh :call C_InsertTemplate("statements.while-block")
nnoremap <buffer> <silent> \swh :call C_InsertTemplate("statements.while-block")
vnoremap <buffer> <silent> \swh :call C_InsertTemplate("statements.while-block", "v")
onoremap <buffer> <silent> \ss :call C_InsertTemplate("statements.switch")
nnoremap <buffer> <silent> \ss :call C_InsertTemplate("statements.switch")
vnoremap <buffer> <silent> \ss :call C_InsertTemplate("statements.switch", "v")
noremap <buffer> <silent> \sc :call C_InsertTemplate("statements.case")
onoremap <buffer> <silent> \s{ :call C_InsertTemplate("statements.block")
nnoremap <buffer> <silent> \s{ :call C_InsertTemplate("statements.block")
vnoremap <buffer> <silent> \s{ :call C_InsertTemplate("statements.block", "v")
onoremap <buffer> <silent> \sb :call C_InsertTemplate("statements.block")
nnoremap <buffer> <silent> \sb :call C_InsertTemplate("statements.block")
vnoremap <buffer> <silent> \sb :call C_InsertTemplate("statements.block", "v")
noremap <buffer> \ps :IncludeStdLibrary 
noremap <buffer> \pc :IncludeC99Library 
noremap <buffer> \+ps :IncludeCppLibrary 
noremap <buffer> \+pc :IncludeCppCLibrary 
noremap <buffer> <silent> \p< :call C_InsertTemplate("preprocessor.include-global")
noremap <buffer> <silent> \p" :call C_InsertTemplate("preprocessor.include-local")
noremap <buffer> <silent> \pd :call C_InsertTemplate("preprocessor.define")
noremap <buffer> <silent> \pu :call C_InsertTemplate("preprocessor.undefine")
onoremap <buffer> <silent> \pif :call C_InsertTemplate("preprocessor.if-endif")
nnoremap <buffer> <silent> \pif :call C_InsertTemplate("preprocessor.if-endif")
onoremap <buffer> <silent> \pie :call C_InsertTemplate("preprocessor.if-else-endif")
nnoremap <buffer> <silent> \pie :call C_InsertTemplate("preprocessor.if-else-endif")
onoremap <buffer> <silent> \pid :call C_InsertTemplate("preprocessor.ifdef-else-endif")
nnoremap <buffer> <silent> \pid :call C_InsertTemplate("preprocessor.ifdef-else-endif")
onoremap <buffer> <silent> \pin :call C_InsertTemplate("preprocessor.ifndef-else-endif")
nnoremap <buffer> <silent> \pin :call C_InsertTemplate("preprocessor.ifndef-else-endif")
onoremap <buffer> <silent> \pind :call C_InsertTemplate("preprocessor.ifndef-def-endif")
nnoremap <buffer> <silent> \pind :call C_InsertTemplate("preprocessor.ifndef-def-endif")
vnoremap <buffer> <silent> \pif :call C_InsertTemplate("preprocessor.if-endif", "v")
vnoremap <buffer> <silent> \pie :call C_InsertTemplate("preprocessor.if-else-endif", "v")
vnoremap <buffer> <silent> \pid :call C_InsertTemplate("preprocessor.ifdef-else-endif", "v")
vnoremap <buffer> <silent> \pin :call C_InsertTemplate("preprocessor.ifndef-else-endif", "v")
vnoremap <buffer> <silent> \pind :call C_InsertTemplate("preprocessor.ifndef-def-endif", "v")
onoremap <buffer> <silent> \pi0 :call C_PPIf0("a")
nnoremap <buffer> <silent> \pi0 :call C_PPIf0("a")
vnoremap <buffer> <silent> \pi0 :call C_PPIf0("v")
noremap <buffer> <silent> \pr0 :call C_PPIf0Remove()
noremap <buffer> <silent> \pe :call C_InsertTemplate("preprocessor.error")
noremap <buffer> <silent> \pl :call C_InsertTemplate("preprocessor.line")
noremap <buffer> <silent> \pp :call C_InsertTemplate("preprocessor.pragma")
onoremap <buffer> <silent> \if :call C_InsertTemplate("idioms.function")
nnoremap <buffer> <silent> \if :call C_InsertTemplate("idioms.function")
vnoremap <buffer> <silent> \if :call C_InsertTemplate("idioms.function", "v")
onoremap <buffer> <silent> \isf :call C_InsertTemplate("idioms.function-static")
nnoremap <buffer> <silent> \isf :call C_InsertTemplate("idioms.function-static")
vnoremap <buffer> <silent> \isf :call C_InsertTemplate("idioms.function-static", "v")
onoremap <buffer> <silent> \im :call C_InsertTemplate("idioms.main")
nnoremap <buffer> <silent> \im :call C_InsertTemplate("idioms.main")
vnoremap <buffer> <silent> \im :call C_InsertTemplate("idioms.main", "v")
onoremap <buffer> <silent> \i0 :call C_CodeFor("up"  )
nnoremap <buffer> <silent> \i0 :call C_CodeFor("up"  )
vnoremap <buffer> <silent> \i0 :call C_CodeFor("up"  )
onoremap <buffer> <silent> \in :call C_CodeFor("down")
nnoremap <buffer> <silent> \in :call C_CodeFor("down")
vnoremap <buffer> <silent> \in :call C_CodeFor("down")
onoremap <buffer> <silent> \ie :call C_InsertTemplate("idioms.enum")
nnoremap <buffer> <silent> \ie :call C_InsertTemplate("idioms.enum")
vnoremap <buffer> <silent> \ie :call C_InsertTemplate("idioms.enum"  , "v")
onoremap <buffer> <silent> \is :call C_InsertTemplate("idioms.struct")
nnoremap <buffer> <silent> \is :call C_InsertTemplate("idioms.struct")
vnoremap <buffer> <silent> \is :call C_InsertTemplate("idioms.struct", "v")
onoremap <buffer> <silent> \iu :call C_InsertTemplate("idioms.union")
nnoremap <buffer> <silent> \iu :call C_InsertTemplate("idioms.union")
vnoremap <buffer> <silent> \iu :call C_InsertTemplate("idioms.union" , "v")
noremap <buffer> <silent> \ip :call C_InsertTemplate("idioms.printf")
noremap <buffer> <silent> \isc :call C_InsertTemplate("idioms.scanf")
noremap <buffer> <silent> \ica :call C_InsertTemplate("idioms.calloc")
noremap <buffer> <silent> \ima :call C_InsertTemplate("idioms.malloc")
noremap <buffer> <silent> \ire :call C_InsertTemplate("idioms.realloc")
onoremap <buffer> <silent> \isi :call C_InsertTemplate("idioms.sizeof")
nnoremap <buffer> <silent> \isi :call C_InsertTemplate("idioms.sizeof")
vnoremap <buffer> <silent> \isi :call C_InsertTemplate("idioms.sizeof", "v")
onoremap <buffer> <silent> \ias :call C_InsertTemplate("idioms.assert")
nnoremap <buffer> <silent> \ias :call C_InsertTemplate("idioms.assert")
vnoremap <buffer> <silent> \ias :call C_InsertTemplate("idioms.assert", "v")
onoremap <buffer> <silent> \ii :call C_InsertTemplate("idioms.open-input-file")
nnoremap <buffer> <silent> \ii :call C_InsertTemplate("idioms.open-input-file")
vnoremap <buffer> <silent> \ii :call C_InsertTemplate("idioms.open-input-file", "v")
onoremap <buffer> <silent> \io :call C_InsertTemplate("idioms.open-output-file")
nnoremap <buffer> <silent> \io :call C_InsertTemplate("idioms.open-output-file")
vnoremap <buffer> <silent> \io :call C_InsertTemplate("idioms.open-output-file", "v")
noremap <buffer> <silent> \ifs :call C_InsertTemplate("idioms.fscanf")
noremap <buffer> <silent> \ifp :call C_InsertTemplate("idioms.fprintf")
noremap <buffer> <silent> \nr :call C_CodeSnippet("r")
onoremap <buffer> <silent> \nw :call C_CodeSnippet("w")
nnoremap <buffer> <silent> \nw :call C_CodeSnippet("w")
vnoremap <buffer> <silent> \nw :call C_CodeSnippet("wv")
noremap <buffer> <silent> \ne :call C_CodeSnippet("e")
onoremap <buffer> <silent> \np :call C_ProtoPick("function")
nnoremap <buffer> <silent> \np :call C_ProtoPick("function")
vnoremap <buffer> <silent> \np :call C_ProtoPick("function")
onoremap <buffer> <silent> \nf :call C_ProtoPick("function")
nnoremap <buffer> <silent> \nf :call C_ProtoPick("function")
vnoremap <buffer> <silent> \nf :call C_ProtoPick("function")
onoremap <buffer> <silent> \nm :call C_ProtoPick("method")
nnoremap <buffer> <silent> \nm :call C_ProtoPick("method")
vnoremap <buffer> <silent> \nm :call C_ProtoPick("method")
noremap <buffer> <silent> \ni :call C_ProtoInsert()
noremap <buffer> <silent> \nc :call C_ProtoClear()
noremap <buffer> <silent> \ns :call C_ProtoShow()
noremap <buffer> <silent> \ntl :call C_BrowseTemplateFiles("Local")
noremap <buffer> <silent> \ntr :call C_RereadTemplates()
noremap <buffer> \nts :CStyle 
noremap <buffer> <silent> \+" :call C_InsertTemplate("cpp.cout-operator")
noremap <buffer> <silent> \+co :call C_InsertTemplate("cpp.cout")
noremap <buffer> <silent> \+c :call C_InsertTemplate("cpp.class-definition")
noremap <buffer> <silent> \+cn :call C_InsertTemplate("cpp.class-using-new-definition")
noremap <buffer> <silent> \+ci :call C_InsertTemplate("cpp.class-implementation")
noremap <buffer> <silent> \+cni :call C_InsertTemplate("cpp.class-using-new-implementation")
noremap <buffer> <silent> \+mi :call C_InsertTemplate("cpp.method-implementation")
noremap <buffer> <silent> \+ai :call C_InsertTemplate("cpp.accessor-implementation")
noremap <buffer> <silent> \+tc :call C_InsertTemplate("cpp.template-class-definition")
noremap <buffer> <silent> \+tcn :call C_InsertTemplate("cpp.template-class-using-new-definition")
noremap <buffer> <silent> \+tci :call C_InsertTemplate("cpp.template-class-implementation")
noremap <buffer> <silent> \+tcni :call C_InsertTemplate("cpp.template-class-using-new-implementation")
noremap <buffer> <silent> \+tmi :call C_InsertTemplate("cpp.template-method-implementation")
noremap <buffer> <silent> \+tai :call C_InsertTemplate("cpp.template-accessor-implementation")
noremap <buffer> <silent> \+tf :call C_InsertTemplate("cpp.template-function")
noremap <buffer> <silent> \+ec :call C_InsertTemplate("cpp.error-class")
onoremap <buffer> <silent> \+tr :call C_InsertTemplate("cpp.try-catch")
nnoremap <buffer> <silent> \+tr :call C_InsertTemplate("cpp.try-catch")
vnoremap <buffer> <silent> \+tr :call C_InsertTemplate("cpp.try-catch", "v")
onoremap <buffer> <silent> \+ca :call C_InsertTemplate("cpp.catch")
nnoremap <buffer> <silent> \+ca :call C_InsertTemplate("cpp.catch")
vnoremap <buffer> <silent> \+ca :call C_InsertTemplate("cpp.catch", "v")
onoremap <buffer> <silent> \+c. :call C_InsertTemplate("cpp.catch-points")
nnoremap <buffer> <silent> \+c. :call C_InsertTemplate("cpp.catch-points")
vnoremap <buffer> <silent> \+c. :call C_InsertTemplate("cpp.catch-points", "v")
map <buffer> <silent> \rc :call C_Compile()
map <buffer> <silent> \rl :call C_Link()
map <buffer> <silent> \rr :call C_Run()
map <buffer> <silent> \ra :call C_Arguments()
map <buffer> <silent> \rm :call C_Make()
map <buffer> <silent> \rcm :call C_ChooseMakefile()
map <buffer> <silent> \rmc :call C_MakeClean()
map <buffer> <silent> \rme :call C_MakeExeToRun()
map <buffer> <silent> \rma :call C_MakeArguments()
map <buffer> <silent> \rp :call C_SplintCheck()
map <buffer> <silent> \rpa :call C_SplintArguments()
map <buffer> <silent> \rd :call C_Indent()
omap <buffer> <silent> \rh :call C_Hardcopy()
nmap <buffer> <silent> \rh :call C_Hardcopy()
map <buffer> <silent> \rs :call C_Settings()
vmap <buffer> <silent> \rh :call C_Hardcopy()
map <buffer> <silent> \rx :call C_XtermSize()
map <buffer> <silent> \ro :call C_Toggle_Gvim_Xterm()
map <buffer> <silent> \hp :call C_HelpCsupport()
map <buffer> <silent> \hm :call C_Help("m")
nmap <buffer> ]c <Plug>GitGutterNextHunk
xmap <buffer> ac <Plug>GitGutterTextObjectOuterVisual
omap <buffer> ac <Plug>GitGutterTextObjectOuterPending
xmap <buffer> ic <Plug>GitGutterTextObjectInnerVisual
omap <buffer> ic <Plug>GitGutterTextObjectInnerPending
vnoremap <buffer> {
map <buffer> <silent> <M-F9> :call C_Compile()
map <buffer> <silent> <F9> :call C_Link()
map <buffer> <silent> <C-F9> :call C_Run()
map <buffer> <silent> <S-F9> :call C_Arguments()
imap <buffer> <silent> g <Plug>delimitMateJumpMany
imap <buffer>  <Plug>delimitMateBS
imap <buffer> <silent> <NL> =C_JumpCtrlJ()
imap <buffer> " <Plug>delimitMate"
imap <buffer> ' <Plug>delimitMate'
imap <buffer> ( <Plug>delimitMate(
imap <buffer> ) <Plug>delimitMate)
inoremap <buffer> /* /*  */<Left><Left><Left>
inoremap <buffer> /*
imap <buffer> [ <Plug>delimitMate[
inoremap <buffer> <silent> \cl :call C_EndOfLineComment()
inoremap <buffer> <silent> \cj :call C_AdjustLineEndComm()
inoremap <buffer> <silent> \cfr :call C_InsertTemplate("comment.frame")
inoremap <buffer> <silent> \cfu :call C_InsertTemplate("comment.function")
inoremap <buffer> <silent> \cme :call C_InsertTemplate("comment.method")
inoremap <buffer> <silent> \ccl :call C_InsertTemplate("comment.class")
inoremap <buffer> <silent> \cfdi :call C_InsertTemplate("comment.file-description")
inoremap <buffer> <silent> \cfdh :call C_InsertTemplate("comment.file-description-header")
inoremap <buffer> <silent> \cd :call C_InsertDateAndTime('d')
inoremap <buffer> <silent> \ct :call C_InsertDateAndTime('dt')
inoremap <buffer> <silent> \cx :call C_CommentToggle( )
inoremap <buffer> \ccs :CFileSection 
inoremap <buffer> \chs :HFileSection 
inoremap <buffer> \ckc :KeywordComment 
inoremap <buffer> \csc :SpecialComment 
inoremap <buffer> <silent> \sd :call C_InsertTemplate("statements.do-while")
inoremap <buffer> <silent> \sf :call C_InsertTemplate("statements.for")
inoremap <buffer> <silent> \sfo :call C_InsertTemplate("statements.for-block")
inoremap <buffer> <silent> \si :call C_InsertTemplate("statements.if")
inoremap <buffer> <silent> \sif :call C_InsertTemplate("statements.if-block")
inoremap <buffer> <silent> \sie :call C_InsertTemplate("statements.if-else")
inoremap <buffer> <silent> \sife :call C_InsertTemplate("statements.if-block-else")
inoremap <buffer> <silent> \se :call C_InsertTemplate("statements.else-block")
inoremap <buffer> <silent> \sw :call C_InsertTemplate("statements.while")
inoremap <buffer> <silent> \swh :call C_InsertTemplate("statements.while-block")
inoremap <buffer> <silent> \ss :call C_InsertTemplate("statements.switch")
inoremap <buffer> <silent> \sc :call C_InsertTemplate("statements.case")
inoremap <buffer> <silent> \s{ :call C_InsertTemplate("statements.block")
inoremap <buffer> <silent> \sb :call C_InsertTemplate("statements.block")
inoremap <buffer> \ps :IncludeStdLibrary 
inoremap <buffer> \pc :IncludeC99Library 
inoremap <buffer> \+ps :IncludeCppLibrary 
inoremap <buffer> \+pc :IncludeCppC9Library 
inoremap <buffer> <silent> \p< :call C_InsertTemplate("preprocessor.include-global")
inoremap <buffer> <silent> \p" :call C_InsertTemplate("preprocessor.include-local")
inoremap <buffer> <silent> \pd :call C_InsertTemplate("preprocessor.define")
inoremap <buffer> <silent> \pu :call C_InsertTemplate("preprocessor.undefine")
inoremap <buffer> <silent> \pif :call C_InsertTemplate("preprocessor.if-endif")
inoremap <buffer> <silent> \pie :call C_InsertTemplate("preprocessor.if-else-endif")
inoremap <buffer> <silent> \pid :call C_InsertTemplate("preprocessor.ifdef-else-endif")
inoremap <buffer> <silent> \pin :call C_InsertTemplate("preprocessor.ifndef-else-endif")
inoremap <buffer> <silent> \pind :call C_InsertTemplate("preprocessor.ifndef-def-endif")
inoremap <buffer> <silent> \pi0 :call C_PPIf0("a")
inoremap <buffer> <silent> \pr0 :call C_PPIf0Remove()
inoremap <buffer> <silent> \pe :call C_InsertTemplate("preprocessor.error")
inoremap <buffer> <silent> \pl :call C_InsertTemplate("preprocessor.line")
inoremap <buffer> <silent> \pp :call C_InsertTemplate("preprocessor.pragma")
inoremap <buffer> <silent> \if :call C_InsertTemplate("idioms.function")
inoremap <buffer> <silent> \isf :call C_InsertTemplate("idioms.function-static")
inoremap <buffer> <silent> \im :call C_InsertTemplate("idioms.main")
inoremap <buffer> <silent> \i0 :call C_CodeFor("up"  )
inoremap <buffer> <silent> \in :call C_CodeFor("down")
inoremap <buffer> <silent> \ie :call C_InsertTemplate("idioms.enum")
inoremap <buffer> <silent> \is :call C_InsertTemplate("idioms.struct")
inoremap <buffer> <silent> \iu :call C_InsertTemplate("idioms.union")
inoremap <buffer> <silent> \ip :call C_InsertTemplate("idioms.printf")
inoremap <buffer> <silent> \isc :call C_InsertTemplate("idioms.scanf")
inoremap <buffer> <silent> \ica :call C_InsertTemplate("idioms.calloc")
inoremap <buffer> <silent> \ima :call C_InsertTemplate("idioms.malloc")
inoremap <buffer> <silent> \ire :call C_InsertTemplate("idioms.realloc")
inoremap <buffer> <silent> \isi :call C_InsertTemplate("idioms.sizeof")
inoremap <buffer> <silent> \ias :call C_InsertTemplate("idioms.assert")
inoremap <buffer> <silent> \ii :call C_InsertTemplate("idioms.open-input-file")
inoremap <buffer> <silent> \io :call C_InsertTemplate("idioms.open-output-file")
inoremap <buffer> <silent> \ifs :call C_InsertTemplate("idioms.fscanf")
inoremap <buffer> <silent> \ifp :call C_InsertTemplate("idioms.fprintf")
inoremap <buffer> <silent> \nr :call C_CodeSnippet("r")
inoremap <buffer> <silent> \nw :call C_CodeSnippet("w")
inoremap <buffer> <silent> \ne :call C_CodeSnippet("e")
inoremap <buffer> <silent> \np :call C_ProtoPick("function")
inoremap <buffer> <silent> \nf :call C_ProtoPick("function")
inoremap <buffer> <silent> \nm :call C_ProtoPick("method")
inoremap <buffer> <silent> \ni :call C_ProtoInsert()
inoremap <buffer> <silent> \nc :call C_ProtoClear()
inoremap <buffer> <silent> \ns :call C_ProtoShow()
inoremap <buffer> <silent> \ntl :call C_BrowseTemplateFiles("Local")
inoremap <buffer> <silent> \ntr :call C_RereadTemplates()
inoremap <buffer> \nts :CStyle 
inoremap <buffer> <silent> \+" :call C_InsertTemplate("cpp.cout-operator")
inoremap <buffer> <silent> \+co :call C_InsertTemplate("cpp.cout")
inoremap <buffer> <silent> \+c :call C_InsertTemplate("cpp.class-definition")
inoremap <buffer> <silent> \+cn :call C_InsertTemplate("cpp.class-using-new-definition")
inoremap <buffer> <silent> \+ci :call C_InsertTemplate("cpp.class-implementation")
inoremap <buffer> <silent> \+cni :call C_InsertTemplate("cpp.class-using-new-implementation")
inoremap <buffer> <silent> \+mi :call C_InsertTemplate("cpp.method-implementation")
inoremap <buffer> <silent> \+ai :call C_InsertTemplate("cpp.accessor-implementation")
inoremap <buffer> <silent> \+tc :call C_InsertTemplate("cpp.template-class-definition")
inoremap <buffer> <silent> \+tcn :call C_InsertTemplate("cpp.template-class-using-new-definition")
inoremap <buffer> <silent> \+tci :call C_InsertTemplate("cpp.template-class-implementation")
inoremap <buffer> <silent> \+tcni :call C_InsertTemplate("cpp.template-class-using-new-implementation")
inoremap <buffer> <silent> \+tmi :call C_InsertTemplate("cpp.template-method-implementation")
inoremap <buffer> <silent> \+tai :call C_InsertTemplate("cpp.template-accessor-implementation")
inoremap <buffer> <silent> \+tf :call C_InsertTemplate("cpp.template-function")
inoremap <buffer> <silent> \+ec :call C_InsertTemplate("cpp.error-class")
inoremap <buffer> <silent> \+tr :call C_InsertTemplate("cpp.try-catch")
inoremap <buffer> <silent> \+ca :call C_InsertTemplate("cpp.catch")
inoremap <buffer> <silent> \+c. :call C_InsertTemplate("cpp.catch-points")
imap <buffer> <silent> \rc :call C_Compile()
imap <buffer> <silent> \rl :call C_Link()
imap <buffer> <silent> \rr :call C_Run()
imap <buffer> <silent> \ra :call C_Arguments()
imap <buffer> <silent> \rm :call C_Make()
imap <buffer> <silent> \rmc :call C_MakeClean()
imap <buffer> <silent> \rme :call C_MakeExeToRun()
imap <buffer> <silent> \rma :call C_MakeArguments()
imap <buffer> <silent> \rp :call C_SplintCheck()
imap <buffer> <silent> \rpa :call C_SplintArguments()
imap <buffer> <silent> \rd :call C_Indent()
imap <buffer> <silent> \rh :call C_Hardcopy()
imap <buffer> <silent> \rs :call C_Settings()
imap <buffer> <silent> \rx :call C_XtermSize()
imap <buffer> <silent> \ro :call C_Toggle_Gvim_Xterm()
imap <buffer> <silent> \hp :call C_HelpCsupport()
imap <buffer> <silent> \hm :call C_Help("m")
imap <buffer> ] <Plug>delimitMate]
imap <buffer> ` <Plug>delimitMate`
inoremap <buffer> {
imap <buffer> { <Plug>delimitMate{
imap <buffer> } <Plug>delimitMate}
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal noautoindent
setlocal backupcopy=
setlocal binary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal cindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=sO:*\ -,mO:*\ \ ,exO:*/,s1:/*,mb:*,ex:*/,://
setlocal commentstring=/*%s*/
setlocal complete=.,w,b,u,t,i
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=~/.vim/plugged/c.vim/c-support/wordlists/c-c++-keywords.list,~/.vim/plugged/c.vim/c-support/wordlists/k+r.list,~/.vim/plugged/c.vim/c-support/wordlists/stl_index.list
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'cpp'
setlocal filetype=cpp
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=-1
setlocal include=
setlocal includeexpr=
setlocal indentexpr=
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=ccomplete#Complete
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal noscrollbind
setlocal shiftwidth=4
setlocal noshortname
setlocal signcolumn=auto
setlocal nosmartindent
setlocal softtabstop=0
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=%!airline#statusline(1)
setlocal suffixesadd=
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != 'cpp'
setlocal syntax=cpp
endif
setlocal tabstop=4
setlocal tagcase=
setlocal tags=
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal undolevels=-123456
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 33 - ((31 * winheight(0) + 25) / 50)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
33
normal! 064|
wincmd w
argglobal
if bufexists('Camera.cpp') | buffer Camera.cpp | else | edit Camera.cpp | endif
let s:cpo_save=&cpo
set cpo&vim
imap <buffer> <silent> <M-F9> :call C_Compile()
imap <buffer> <silent> <F9> :call C_Link()
imap <buffer> <silent> <C-F9> :call C_Run()
imap <buffer> <silent> <S-F9> :call C_Arguments()
imap <buffer> <S-Tab> <Plug>delimitMateS-Tab
imap <buffer> <S-BS> <Plug>delimitMateS-BS
imap <buffer> <BS> <Plug>delimitMateBS
nmap <buffer> <silent> <NL> i=C_JumpCtrlJ()
nmap <buffer> ,hp <Plug>GitGutterPreviewHunk
nmap <buffer> ,hu <Plug>GitGutterUndoHunk
nmap <buffer> ,hs <Plug>GitGutterStageHunk
vnoremap <buffer> /* s/*  */<Left><Left><Left>p
nmap <buffer> [c <Plug>GitGutterPrevHunk
onoremap <buffer> <silent> \cl :call C_EndOfLineComment()
nnoremap <buffer> <silent> \cl :call C_EndOfLineComment()
vnoremap <buffer> <silent> \cl :call C_EndOfLineComment()
nnoremap <buffer> <silent> \cj :call C_AdjustLineEndComm()
vnoremap <buffer> <silent> \cj :call C_AdjustLineEndComm()
noremap <buffer> <silent> \cs :call C_GetLineEndCommCol()
onoremap <buffer> <silent> \c* :call C_CodeToCommentC()
nnoremap <buffer> <silent> \c* :call C_CodeToCommentC()
vnoremap <buffer> <silent> \c* :call C_CodeToCommentC()
onoremap <buffer> <silent> \cc :call C_CodeToCommentCpp()
nnoremap <buffer> <silent> \cc :call C_CodeToCommentCpp()
vnoremap <buffer> <silent> \cc :call C_CodeToCommentCpp()
onoremap <buffer> <silent> \co :call C_CommentToCode()
nnoremap <buffer> <silent> \co :call C_CommentToCode()
vnoremap <buffer> <silent> \co :call C_CommentToCode()
noremap <buffer> <silent> \cfr :call C_InsertTemplate("comment.frame")
noremap <buffer> <silent> \cfu :call C_InsertTemplate("comment.function")
noremap <buffer> <silent> \cme :call C_InsertTemplate("comment.method")
noremap <buffer> <silent> \ccl :call C_InsertTemplate("comment.class")
noremap <buffer> <silent> \cfdi :call C_InsertTemplate("comment.file-description")
noremap <buffer> <silent> \cfdh :call C_InsertTemplate("comment.file-description-header")
onoremap <buffer> <silent> \cd :call C_InsertDateAndTime('d')
nnoremap <buffer> <silent> \cd :call C_InsertDateAndTime('d')
vnoremap <buffer> <silent> \cd s:call C_InsertDateAndTime('d')
onoremap <buffer> <silent> \ct :call C_InsertDateAndTime('dt')
nnoremap <buffer> <silent> \ct :call C_InsertDateAndTime('dt')
vnoremap <buffer> <silent> \ct s:call C_InsertDateAndTime('dt')
onoremap <buffer> <silent> \cx :call C_CommentToggle( )
nnoremap <buffer> <silent> \cx :call C_CommentToggle( )
vnoremap <buffer> <silent> \cx :call C_CommentToggle( )
noremap <buffer> \ccs :CFileSection 
noremap <buffer> \chs :HFileSection 
noremap <buffer> \ckc :KeywordComment 
noremap <buffer> \csc :SpecialComment 
onoremap <buffer> <silent> \sd :call C_InsertTemplate("statements.do-while")
nnoremap <buffer> <silent> \sd :call C_InsertTemplate("statements.do-while")
vnoremap <buffer> <silent> \sd :call C_InsertTemplate("statements.do-while", "v")
noremap <buffer> <silent> \sf :call C_InsertTemplate("statements.for")
onoremap <buffer> <silent> \sfo :call C_InsertTemplate("statements.for-block")
nnoremap <buffer> <silent> \sfo :call C_InsertTemplate("statements.for-block")
vnoremap <buffer> <silent> \sfo :call C_InsertTemplate("statements.for-block", "v")
noremap <buffer> <silent> \si :call C_InsertTemplate("statements.if")
onoremap <buffer> <silent> \sif :call C_InsertTemplate("statements.if-block")
nnoremap <buffer> <silent> \sif :call C_InsertTemplate("statements.if-block")
vnoremap <buffer> <silent> \sif :call C_InsertTemplate("statements.if-block", "v")
onoremap <buffer> <silent> \sie :call C_InsertTemplate("statements.if-else")
nnoremap <buffer> <silent> \sie :call C_InsertTemplate("statements.if-else")
vnoremap <buffer> <silent> \sie :call C_InsertTemplate("statements.if-else", "v")
onoremap <buffer> <silent> \sife :call C_InsertTemplate("statements.if-block-else")
nnoremap <buffer> <silent> \sife :call C_InsertTemplate("statements.if-block-else")
vnoremap <buffer> <silent> \sife :call C_InsertTemplate("statements.if-block-else", "v")
onoremap <buffer> <silent> \se :call C_InsertTemplate("statements.else-block")
nnoremap <buffer> <silent> \se :call C_InsertTemplate("statements.else-block")
vnoremap <buffer> <silent> \se :call C_InsertTemplate("statements.else-block", "v")
noremap <buffer> <silent> \sw :call C_InsertTemplate("statements.while")
onoremap <buffer> <silent> \swh :call C_InsertTemplate("statements.while-block")
nnoremap <buffer> <silent> \swh :call C_InsertTemplate("statements.while-block")
vnoremap <buffer> <silent> \swh :call C_InsertTemplate("statements.while-block", "v")
onoremap <buffer> <silent> \ss :call C_InsertTemplate("statements.switch")
nnoremap <buffer> <silent> \ss :call C_InsertTemplate("statements.switch")
vnoremap <buffer> <silent> \ss :call C_InsertTemplate("statements.switch", "v")
noremap <buffer> <silent> \sc :call C_InsertTemplate("statements.case")
onoremap <buffer> <silent> \s{ :call C_InsertTemplate("statements.block")
nnoremap <buffer> <silent> \s{ :call C_InsertTemplate("statements.block")
vnoremap <buffer> <silent> \s{ :call C_InsertTemplate("statements.block", "v")
onoremap <buffer> <silent> \sb :call C_InsertTemplate("statements.block")
nnoremap <buffer> <silent> \sb :call C_InsertTemplate("statements.block")
vnoremap <buffer> <silent> \sb :call C_InsertTemplate("statements.block", "v")
noremap <buffer> \ps :IncludeStdLibrary 
noremap <buffer> \pc :IncludeC99Library 
noremap <buffer> \+ps :IncludeCppLibrary 
noremap <buffer> \+pc :IncludeCppCLibrary 
noremap <buffer> <silent> \p< :call C_InsertTemplate("preprocessor.include-global")
noremap <buffer> <silent> \p" :call C_InsertTemplate("preprocessor.include-local")
noremap <buffer> <silent> \pd :call C_InsertTemplate("preprocessor.define")
noremap <buffer> <silent> \pu :call C_InsertTemplate("preprocessor.undefine")
onoremap <buffer> <silent> \pif :call C_InsertTemplate("preprocessor.if-endif")
nnoremap <buffer> <silent> \pif :call C_InsertTemplate("preprocessor.if-endif")
onoremap <buffer> <silent> \pie :call C_InsertTemplate("preprocessor.if-else-endif")
nnoremap <buffer> <silent> \pie :call C_InsertTemplate("preprocessor.if-else-endif")
onoremap <buffer> <silent> \pid :call C_InsertTemplate("preprocessor.ifdef-else-endif")
nnoremap <buffer> <silent> \pid :call C_InsertTemplate("preprocessor.ifdef-else-endif")
onoremap <buffer> <silent> \pin :call C_InsertTemplate("preprocessor.ifndef-else-endif")
nnoremap <buffer> <silent> \pin :call C_InsertTemplate("preprocessor.ifndef-else-endif")
onoremap <buffer> <silent> \pind :call C_InsertTemplate("preprocessor.ifndef-def-endif")
nnoremap <buffer> <silent> \pind :call C_InsertTemplate("preprocessor.ifndef-def-endif")
vnoremap <buffer> <silent> \pif :call C_InsertTemplate("preprocessor.if-endif", "v")
vnoremap <buffer> <silent> \pie :call C_InsertTemplate("preprocessor.if-else-endif", "v")
vnoremap <buffer> <silent> \pid :call C_InsertTemplate("preprocessor.ifdef-else-endif", "v")
vnoremap <buffer> <silent> \pin :call C_InsertTemplate("preprocessor.ifndef-else-endif", "v")
vnoremap <buffer> <silent> \pind :call C_InsertTemplate("preprocessor.ifndef-def-endif", "v")
onoremap <buffer> <silent> \pi0 :call C_PPIf0("a")
nnoremap <buffer> <silent> \pi0 :call C_PPIf0("a")
vnoremap <buffer> <silent> \pi0 :call C_PPIf0("v")
noremap <buffer> <silent> \pr0 :call C_PPIf0Remove()
noremap <buffer> <silent> \pe :call C_InsertTemplate("preprocessor.error")
noremap <buffer> <silent> \pl :call C_InsertTemplate("preprocessor.line")
noremap <buffer> <silent> \pp :call C_InsertTemplate("preprocessor.pragma")
onoremap <buffer> <silent> \if :call C_InsertTemplate("idioms.function")
nnoremap <buffer> <silent> \if :call C_InsertTemplate("idioms.function")
vnoremap <buffer> <silent> \if :call C_InsertTemplate("idioms.function", "v")
onoremap <buffer> <silent> \isf :call C_InsertTemplate("idioms.function-static")
nnoremap <buffer> <silent> \isf :call C_InsertTemplate("idioms.function-static")
vnoremap <buffer> <silent> \isf :call C_InsertTemplate("idioms.function-static", "v")
onoremap <buffer> <silent> \im :call C_InsertTemplate("idioms.main")
nnoremap <buffer> <silent> \im :call C_InsertTemplate("idioms.main")
vnoremap <buffer> <silent> \im :call C_InsertTemplate("idioms.main", "v")
onoremap <buffer> <silent> \i0 :call C_CodeFor("up"  )
nnoremap <buffer> <silent> \i0 :call C_CodeFor("up"  )
vnoremap <buffer> <silent> \i0 :call C_CodeFor("up"  )
onoremap <buffer> <silent> \in :call C_CodeFor("down")
nnoremap <buffer> <silent> \in :call C_CodeFor("down")
vnoremap <buffer> <silent> \in :call C_CodeFor("down")
onoremap <buffer> <silent> \ie :call C_InsertTemplate("idioms.enum")
nnoremap <buffer> <silent> \ie :call C_InsertTemplate("idioms.enum")
vnoremap <buffer> <silent> \ie :call C_InsertTemplate("idioms.enum"  , "v")
onoremap <buffer> <silent> \is :call C_InsertTemplate("idioms.struct")
nnoremap <buffer> <silent> \is :call C_InsertTemplate("idioms.struct")
vnoremap <buffer> <silent> \is :call C_InsertTemplate("idioms.struct", "v")
onoremap <buffer> <silent> \iu :call C_InsertTemplate("idioms.union")
nnoremap <buffer> <silent> \iu :call C_InsertTemplate("idioms.union")
vnoremap <buffer> <silent> \iu :call C_InsertTemplate("idioms.union" , "v")
noremap <buffer> <silent> \ip :call C_InsertTemplate("idioms.printf")
noremap <buffer> <silent> \isc :call C_InsertTemplate("idioms.scanf")
noremap <buffer> <silent> \ica :call C_InsertTemplate("idioms.calloc")
noremap <buffer> <silent> \ima :call C_InsertTemplate("idioms.malloc")
noremap <buffer> <silent> \ire :call C_InsertTemplate("idioms.realloc")
onoremap <buffer> <silent> \isi :call C_InsertTemplate("idioms.sizeof")
nnoremap <buffer> <silent> \isi :call C_InsertTemplate("idioms.sizeof")
vnoremap <buffer> <silent> \isi :call C_InsertTemplate("idioms.sizeof", "v")
onoremap <buffer> <silent> \ias :call C_InsertTemplate("idioms.assert")
nnoremap <buffer> <silent> \ias :call C_InsertTemplate("idioms.assert")
vnoremap <buffer> <silent> \ias :call C_InsertTemplate("idioms.assert", "v")
onoremap <buffer> <silent> \ii :call C_InsertTemplate("idioms.open-input-file")
nnoremap <buffer> <silent> \ii :call C_InsertTemplate("idioms.open-input-file")
vnoremap <buffer> <silent> \ii :call C_InsertTemplate("idioms.open-input-file", "v")
onoremap <buffer> <silent> \io :call C_InsertTemplate("idioms.open-output-file")
nnoremap <buffer> <silent> \io :call C_InsertTemplate("idioms.open-output-file")
vnoremap <buffer> <silent> \io :call C_InsertTemplate("idioms.open-output-file", "v")
noremap <buffer> <silent> \ifs :call C_InsertTemplate("idioms.fscanf")
noremap <buffer> <silent> \ifp :call C_InsertTemplate("idioms.fprintf")
noremap <buffer> <silent> \nr :call C_CodeSnippet("r")
onoremap <buffer> <silent> \nw :call C_CodeSnippet("w")
nnoremap <buffer> <silent> \nw :call C_CodeSnippet("w")
vnoremap <buffer> <silent> \nw :call C_CodeSnippet("wv")
noremap <buffer> <silent> \ne :call C_CodeSnippet("e")
onoremap <buffer> <silent> \np :call C_ProtoPick("function")
nnoremap <buffer> <silent> \np :call C_ProtoPick("function")
vnoremap <buffer> <silent> \np :call C_ProtoPick("function")
onoremap <buffer> <silent> \nf :call C_ProtoPick("function")
nnoremap <buffer> <silent> \nf :call C_ProtoPick("function")
vnoremap <buffer> <silent> \nf :call C_ProtoPick("function")
onoremap <buffer> <silent> \nm :call C_ProtoPick("method")
nnoremap <buffer> <silent> \nm :call C_ProtoPick("method")
vnoremap <buffer> <silent> \nm :call C_ProtoPick("method")
noremap <buffer> <silent> \ni :call C_ProtoInsert()
noremap <buffer> <silent> \nc :call C_ProtoClear()
noremap <buffer> <silent> \ns :call C_ProtoShow()
noremap <buffer> <silent> \ntl :call C_BrowseTemplateFiles("Local")
noremap <buffer> <silent> \ntr :call C_RereadTemplates()
noremap <buffer> \nts :CStyle 
noremap <buffer> <silent> \+" :call C_InsertTemplate("cpp.cout-operator")
noremap <buffer> <silent> \+co :call C_InsertTemplate("cpp.cout")
noremap <buffer> <silent> \+c :call C_InsertTemplate("cpp.class-definition")
noremap <buffer> <silent> \+cn :call C_InsertTemplate("cpp.class-using-new-definition")
noremap <buffer> <silent> \+ci :call C_InsertTemplate("cpp.class-implementation")
noremap <buffer> <silent> \+cni :call C_InsertTemplate("cpp.class-using-new-implementation")
noremap <buffer> <silent> \+mi :call C_InsertTemplate("cpp.method-implementation")
noremap <buffer> <silent> \+ai :call C_InsertTemplate("cpp.accessor-implementation")
noremap <buffer> <silent> \+tc :call C_InsertTemplate("cpp.template-class-definition")
noremap <buffer> <silent> \+tcn :call C_InsertTemplate("cpp.template-class-using-new-definition")
noremap <buffer> <silent> \+tci :call C_InsertTemplate("cpp.template-class-implementation")
noremap <buffer> <silent> \+tcni :call C_InsertTemplate("cpp.template-class-using-new-implementation")
noremap <buffer> <silent> \+tmi :call C_InsertTemplate("cpp.template-method-implementation")
noremap <buffer> <silent> \+tai :call C_InsertTemplate("cpp.template-accessor-implementation")
noremap <buffer> <silent> \+tf :call C_InsertTemplate("cpp.template-function")
noremap <buffer> <silent> \+ec :call C_InsertTemplate("cpp.error-class")
onoremap <buffer> <silent> \+tr :call C_InsertTemplate("cpp.try-catch")
nnoremap <buffer> <silent> \+tr :call C_InsertTemplate("cpp.try-catch")
vnoremap <buffer> <silent> \+tr :call C_InsertTemplate("cpp.try-catch", "v")
onoremap <buffer> <silent> \+ca :call C_InsertTemplate("cpp.catch")
nnoremap <buffer> <silent> \+ca :call C_InsertTemplate("cpp.catch")
vnoremap <buffer> <silent> \+ca :call C_InsertTemplate("cpp.catch", "v")
onoremap <buffer> <silent> \+c. :call C_InsertTemplate("cpp.catch-points")
nnoremap <buffer> <silent> \+c. :call C_InsertTemplate("cpp.catch-points")
vnoremap <buffer> <silent> \+c. :call C_InsertTemplate("cpp.catch-points", "v")
map <buffer> <silent> \rc :call C_Compile()
map <buffer> <silent> \rl :call C_Link()
map <buffer> <silent> \rr :call C_Run()
map <buffer> <silent> \ra :call C_Arguments()
map <buffer> <silent> \rm :call C_Make()
map <buffer> <silent> \rcm :call C_ChooseMakefile()
map <buffer> <silent> \rmc :call C_MakeClean()
map <buffer> <silent> \rme :call C_MakeExeToRun()
map <buffer> <silent> \rma :call C_MakeArguments()
map <buffer> <silent> \rp :call C_SplintCheck()
map <buffer> <silent> \rpa :call C_SplintArguments()
map <buffer> <silent> \rd :call C_Indent()
omap <buffer> <silent> \rh :call C_Hardcopy()
nmap <buffer> <silent> \rh :call C_Hardcopy()
map <buffer> <silent> \rs :call C_Settings()
vmap <buffer> <silent> \rh :call C_Hardcopy()
map <buffer> <silent> \rx :call C_XtermSize()
map <buffer> <silent> \ro :call C_Toggle_Gvim_Xterm()
map <buffer> <silent> \hp :call C_HelpCsupport()
map <buffer> <silent> \hm :call C_Help("m")
nmap <buffer> ]c <Plug>GitGutterNextHunk
xmap <buffer> ac <Plug>GitGutterTextObjectOuterVisual
omap <buffer> ac <Plug>GitGutterTextObjectOuterPending
xmap <buffer> ic <Plug>GitGutterTextObjectInnerVisual
omap <buffer> ic <Plug>GitGutterTextObjectInnerPending
vnoremap <buffer> {
map <buffer> <silent> <M-F9> :call C_Compile()
map <buffer> <silent> <F9> :call C_Link()
map <buffer> <silent> <C-F9> :call C_Run()
map <buffer> <silent> <S-F9> :call C_Arguments()
imap <buffer> <silent> g <Plug>delimitMateJumpMany
imap <buffer>  <Plug>delimitMateBS
imap <buffer> <silent> <NL> =C_JumpCtrlJ()
imap <buffer> " <Plug>delimitMate"
imap <buffer> ' <Plug>delimitMate'
imap <buffer> ( <Plug>delimitMate(
imap <buffer> ) <Plug>delimitMate)
inoremap <buffer> /* /*  */<Left><Left><Left>
inoremap <buffer> /*
imap <buffer> [ <Plug>delimitMate[
inoremap <buffer> <silent> \cl :call C_EndOfLineComment()
inoremap <buffer> <silent> \cj :call C_AdjustLineEndComm()
inoremap <buffer> <silent> \cfr :call C_InsertTemplate("comment.frame")
inoremap <buffer> <silent> \cfu :call C_InsertTemplate("comment.function")
inoremap <buffer> <silent> \cme :call C_InsertTemplate("comment.method")
inoremap <buffer> <silent> \ccl :call C_InsertTemplate("comment.class")
inoremap <buffer> <silent> \cfdi :call C_InsertTemplate("comment.file-description")
inoremap <buffer> <silent> \cfdh :call C_InsertTemplate("comment.file-description-header")
inoremap <buffer> <silent> \cd :call C_InsertDateAndTime('d')
inoremap <buffer> <silent> \ct :call C_InsertDateAndTime('dt')
inoremap <buffer> <silent> \cx :call C_CommentToggle( )
inoremap <buffer> \ccs :CFileSection 
inoremap <buffer> \chs :HFileSection 
inoremap <buffer> \ckc :KeywordComment 
inoremap <buffer> \csc :SpecialComment 
inoremap <buffer> <silent> \sd :call C_InsertTemplate("statements.do-while")
inoremap <buffer> <silent> \sf :call C_InsertTemplate("statements.for")
inoremap <buffer> <silent> \sfo :call C_InsertTemplate("statements.for-block")
inoremap <buffer> <silent> \si :call C_InsertTemplate("statements.if")
inoremap <buffer> <silent> \sif :call C_InsertTemplate("statements.if-block")
inoremap <buffer> <silent> \sie :call C_InsertTemplate("statements.if-else")
inoremap <buffer> <silent> \sife :call C_InsertTemplate("statements.if-block-else")
inoremap <buffer> <silent> \se :call C_InsertTemplate("statements.else-block")
inoremap <buffer> <silent> \sw :call C_InsertTemplate("statements.while")
inoremap <buffer> <silent> \swh :call C_InsertTemplate("statements.while-block")
inoremap <buffer> <silent> \ss :call C_InsertTemplate("statements.switch")
inoremap <buffer> <silent> \sc :call C_InsertTemplate("statements.case")
inoremap <buffer> <silent> \s{ :call C_InsertTemplate("statements.block")
inoremap <buffer> <silent> \sb :call C_InsertTemplate("statements.block")
inoremap <buffer> \ps :IncludeStdLibrary 
inoremap <buffer> \pc :IncludeC99Library 
inoremap <buffer> \+ps :IncludeCppLibrary 
inoremap <buffer> \+pc :IncludeCppC9Library 
inoremap <buffer> <silent> \p< :call C_InsertTemplate("preprocessor.include-global")
inoremap <buffer> <silent> \p" :call C_InsertTemplate("preprocessor.include-local")
inoremap <buffer> <silent> \pd :call C_InsertTemplate("preprocessor.define")
inoremap <buffer> <silent> \pu :call C_InsertTemplate("preprocessor.undefine")
inoremap <buffer> <silent> \pif :call C_InsertTemplate("preprocessor.if-endif")
inoremap <buffer> <silent> \pie :call C_InsertTemplate("preprocessor.if-else-endif")
inoremap <buffer> <silent> \pid :call C_InsertTemplate("preprocessor.ifdef-else-endif")
inoremap <buffer> <silent> \pin :call C_InsertTemplate("preprocessor.ifndef-else-endif")
inoremap <buffer> <silent> \pind :call C_InsertTemplate("preprocessor.ifndef-def-endif")
inoremap <buffer> <silent> \pi0 :call C_PPIf0("a")
inoremap <buffer> <silent> \pr0 :call C_PPIf0Remove()
inoremap <buffer> <silent> \pe :call C_InsertTemplate("preprocessor.error")
inoremap <buffer> <silent> \pl :call C_InsertTemplate("preprocessor.line")
inoremap <buffer> <silent> \pp :call C_InsertTemplate("preprocessor.pragma")
inoremap <buffer> <silent> \if :call C_InsertTemplate("idioms.function")
inoremap <buffer> <silent> \isf :call C_InsertTemplate("idioms.function-static")
inoremap <buffer> <silent> \im :call C_InsertTemplate("idioms.main")
inoremap <buffer> <silent> \i0 :call C_CodeFor("up"  )
inoremap <buffer> <silent> \in :call C_CodeFor("down")
inoremap <buffer> <silent> \ie :call C_InsertTemplate("idioms.enum")
inoremap <buffer> <silent> \is :call C_InsertTemplate("idioms.struct")
inoremap <buffer> <silent> \iu :call C_InsertTemplate("idioms.union")
inoremap <buffer> <silent> \ip :call C_InsertTemplate("idioms.printf")
inoremap <buffer> <silent> \isc :call C_InsertTemplate("idioms.scanf")
inoremap <buffer> <silent> \ica :call C_InsertTemplate("idioms.calloc")
inoremap <buffer> <silent> \ima :call C_InsertTemplate("idioms.malloc")
inoremap <buffer> <silent> \ire :call C_InsertTemplate("idioms.realloc")
inoremap <buffer> <silent> \isi :call C_InsertTemplate("idioms.sizeof")
inoremap <buffer> <silent> \ias :call C_InsertTemplate("idioms.assert")
inoremap <buffer> <silent> \ii :call C_InsertTemplate("idioms.open-input-file")
inoremap <buffer> <silent> \io :call C_InsertTemplate("idioms.open-output-file")
inoremap <buffer> <silent> \ifs :call C_InsertTemplate("idioms.fscanf")
inoremap <buffer> <silent> \ifp :call C_InsertTemplate("idioms.fprintf")
inoremap <buffer> <silent> \nr :call C_CodeSnippet("r")
inoremap <buffer> <silent> \nw :call C_CodeSnippet("w")
inoremap <buffer> <silent> \ne :call C_CodeSnippet("e")
inoremap <buffer> <silent> \np :call C_ProtoPick("function")
inoremap <buffer> <silent> \nf :call C_ProtoPick("function")
inoremap <buffer> <silent> \nm :call C_ProtoPick("method")
inoremap <buffer> <silent> \ni :call C_ProtoInsert()
inoremap <buffer> <silent> \nc :call C_ProtoClear()
inoremap <buffer> <silent> \ns :call C_ProtoShow()
inoremap <buffer> <silent> \ntl :call C_BrowseTemplateFiles("Local")
inoremap <buffer> <silent> \ntr :call C_RereadTemplates()
inoremap <buffer> \nts :CStyle 
inoremap <buffer> <silent> \+" :call C_InsertTemplate("cpp.cout-operator")
inoremap <buffer> <silent> \+co :call C_InsertTemplate("cpp.cout")
inoremap <buffer> <silent> \+c :call C_InsertTemplate("cpp.class-definition")
inoremap <buffer> <silent> \+cn :call C_InsertTemplate("cpp.class-using-new-definition")
inoremap <buffer> <silent> \+ci :call C_InsertTemplate("cpp.class-implementation")
inoremap <buffer> <silent> \+cni :call C_InsertTemplate("cpp.class-using-new-implementation")
inoremap <buffer> <silent> \+mi :call C_InsertTemplate("cpp.method-implementation")
inoremap <buffer> <silent> \+ai :call C_InsertTemplate("cpp.accessor-implementation")
inoremap <buffer> <silent> \+tc :call C_InsertTemplate("cpp.template-class-definition")
inoremap <buffer> <silent> \+tcn :call C_InsertTemplate("cpp.template-class-using-new-definition")
inoremap <buffer> <silent> \+tci :call C_InsertTemplate("cpp.template-class-implementation")
inoremap <buffer> <silent> \+tcni :call C_InsertTemplate("cpp.template-class-using-new-implementation")
inoremap <buffer> <silent> \+tmi :call C_InsertTemplate("cpp.template-method-implementation")
inoremap <buffer> <silent> \+tai :call C_InsertTemplate("cpp.template-accessor-implementation")
inoremap <buffer> <silent> \+tf :call C_InsertTemplate("cpp.template-function")
inoremap <buffer> <silent> \+ec :call C_InsertTemplate("cpp.error-class")
inoremap <buffer> <silent> \+tr :call C_InsertTemplate("cpp.try-catch")
inoremap <buffer> <silent> \+ca :call C_InsertTemplate("cpp.catch")
inoremap <buffer> <silent> \+c. :call C_InsertTemplate("cpp.catch-points")
imap <buffer> <silent> \rc :call C_Compile()
imap <buffer> <silent> \rl :call C_Link()
imap <buffer> <silent> \rr :call C_Run()
imap <buffer> <silent> \ra :call C_Arguments()
imap <buffer> <silent> \rm :call C_Make()
imap <buffer> <silent> \rmc :call C_MakeClean()
imap <buffer> <silent> \rme :call C_MakeExeToRun()
imap <buffer> <silent> \rma :call C_MakeArguments()
imap <buffer> <silent> \rp :call C_SplintCheck()
imap <buffer> <silent> \rpa :call C_SplintArguments()
imap <buffer> <silent> \rd :call C_Indent()
imap <buffer> <silent> \rh :call C_Hardcopy()
imap <buffer> <silent> \rs :call C_Settings()
imap <buffer> <silent> \rx :call C_XtermSize()
imap <buffer> <silent> \ro :call C_Toggle_Gvim_Xterm()
imap <buffer> <silent> \hp :call C_HelpCsupport()
imap <buffer> <silent> \hm :call C_Help("m")
imap <buffer> ] <Plug>delimitMate]
imap <buffer> ` <Plug>delimitMate`
inoremap <buffer> {
imap <buffer> { <Plug>delimitMate{
imap <buffer> } <Plug>delimitMate}
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal noautoindent
setlocal backupcopy=
setlocal binary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal cindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=sO:*\ -,mO:*\ \ ,exO:*/,s1:/*,mb:*,ex:*/,://
setlocal commentstring=/*%s*/
setlocal complete=.,w,b,u,t,i
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=~/.vim/plugged/c.vim/c-support/wordlists/c-c++-keywords.list,~/.vim/plugged/c.vim/c-support/wordlists/k+r.list,~/.vim/plugged/c.vim/c-support/wordlists/stl_index.list
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'cpp'
setlocal filetype=cpp
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=-1
setlocal include=
setlocal includeexpr=
setlocal indentexpr=
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=ccomplete#Complete
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal noscrollbind
setlocal shiftwidth=4
setlocal noshortname
setlocal signcolumn=auto
setlocal nosmartindent
setlocal softtabstop=0
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=%!airline#statusline(2)
setlocal suffixesadd=
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != 'cpp'
setlocal syntax=cpp
endif
setlocal tabstop=4
setlocal tagcase=
setlocal tags=
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal undolevels=-123456
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 44 - ((4 * winheight(0) + 25) / 50)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
44
normal! 0
wincmd w
exe 'vert 1resize ' . ((&columns * 89 + 89) / 179)
exe 'vert 2resize ' . ((&columns * 89 + 89) / 179)
tabedit Window.hpp
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winminheight=1 winheight=1 winminwidth=1 winwidth=1
exe 'vert 1resize ' . ((&columns * 89 + 89) / 179)
exe 'vert 2resize ' . ((&columns * 89 + 89) / 179)
argglobal
let s:cpo_save=&cpo
set cpo&vim
imap <buffer> <silent> <M-F9> :call C_Compile()
imap <buffer> <silent> <F9> :call C_Link()
imap <buffer> <silent> <C-F9> :call C_Run()
imap <buffer> <silent> <S-F9> :call C_Arguments()
imap <buffer> <S-Tab> <Plug>delimitMateS-Tab
imap <buffer> <S-BS> <Plug>delimitMateS-BS
imap <buffer> <BS> <Plug>delimitMateBS
nmap <buffer> <silent> <NL> i=C_JumpCtrlJ()
nmap <buffer> ,hp <Plug>GitGutterPreviewHunk
nmap <buffer> ,hu <Plug>GitGutterUndoHunk
nmap <buffer> ,hs <Plug>GitGutterStageHunk
vnoremap <buffer> /* s/*  */<Left><Left><Left>p
nmap <buffer> [c <Plug>GitGutterPrevHunk
onoremap <buffer> <silent> \cl :call C_EndOfLineComment()
nnoremap <buffer> <silent> \cl :call C_EndOfLineComment()
vnoremap <buffer> <silent> \cl :call C_EndOfLineComment()
nnoremap <buffer> <silent> \cj :call C_AdjustLineEndComm()
vnoremap <buffer> <silent> \cj :call C_AdjustLineEndComm()
noremap <buffer> <silent> \cs :call C_GetLineEndCommCol()
onoremap <buffer> <silent> \c* :call C_CodeToCommentC()
nnoremap <buffer> <silent> \c* :call C_CodeToCommentC()
vnoremap <buffer> <silent> \c* :call C_CodeToCommentC()
onoremap <buffer> <silent> \cc :call C_CodeToCommentCpp()
nnoremap <buffer> <silent> \cc :call C_CodeToCommentCpp()
vnoremap <buffer> <silent> \cc :call C_CodeToCommentCpp()
onoremap <buffer> <silent> \co :call C_CommentToCode()
nnoremap <buffer> <silent> \co :call C_CommentToCode()
vnoremap <buffer> <silent> \co :call C_CommentToCode()
noremap <buffer> <silent> \cfr :call C_InsertTemplate("comment.frame")
noremap <buffer> <silent> \cfu :call C_InsertTemplate("comment.function")
noremap <buffer> <silent> \cme :call C_InsertTemplate("comment.method")
noremap <buffer> <silent> \ccl :call C_InsertTemplate("comment.class")
noremap <buffer> <silent> \cfdi :call C_InsertTemplate("comment.file-description")
noremap <buffer> <silent> \cfdh :call C_InsertTemplate("comment.file-description-header")
onoremap <buffer> <silent> \cd :call C_InsertDateAndTime('d')
nnoremap <buffer> <silent> \cd :call C_InsertDateAndTime('d')
vnoremap <buffer> <silent> \cd s:call C_InsertDateAndTime('d')
onoremap <buffer> <silent> \ct :call C_InsertDateAndTime('dt')
nnoremap <buffer> <silent> \ct :call C_InsertDateAndTime('dt')
vnoremap <buffer> <silent> \ct s:call C_InsertDateAndTime('dt')
onoremap <buffer> <silent> \cx :call C_CommentToggle( )
nnoremap <buffer> <silent> \cx :call C_CommentToggle( )
vnoremap <buffer> <silent> \cx :call C_CommentToggle( )
noremap <buffer> \ccs :CFileSection 
noremap <buffer> \chs :HFileSection 
noremap <buffer> \ckc :KeywordComment 
noremap <buffer> \csc :SpecialComment 
onoremap <buffer> <silent> \sd :call C_InsertTemplate("statements.do-while")
nnoremap <buffer> <silent> \sd :call C_InsertTemplate("statements.do-while")
vnoremap <buffer> <silent> \sd :call C_InsertTemplate("statements.do-while", "v")
noremap <buffer> <silent> \sf :call C_InsertTemplate("statements.for")
onoremap <buffer> <silent> \sfo :call C_InsertTemplate("statements.for-block")
nnoremap <buffer> <silent> \sfo :call C_InsertTemplate("statements.for-block")
vnoremap <buffer> <silent> \sfo :call C_InsertTemplate("statements.for-block", "v")
noremap <buffer> <silent> \si :call C_InsertTemplate("statements.if")
onoremap <buffer> <silent> \sif :call C_InsertTemplate("statements.if-block")
nnoremap <buffer> <silent> \sif :call C_InsertTemplate("statements.if-block")
vnoremap <buffer> <silent> \sif :call C_InsertTemplate("statements.if-block", "v")
onoremap <buffer> <silent> \sie :call C_InsertTemplate("statements.if-else")
nnoremap <buffer> <silent> \sie :call C_InsertTemplate("statements.if-else")
vnoremap <buffer> <silent> \sie :call C_InsertTemplate("statements.if-else", "v")
onoremap <buffer> <silent> \sife :call C_InsertTemplate("statements.if-block-else")
nnoremap <buffer> <silent> \sife :call C_InsertTemplate("statements.if-block-else")
vnoremap <buffer> <silent> \sife :call C_InsertTemplate("statements.if-block-else", "v")
onoremap <buffer> <silent> \se :call C_InsertTemplate("statements.else-block")
nnoremap <buffer> <silent> \se :call C_InsertTemplate("statements.else-block")
vnoremap <buffer> <silent> \se :call C_InsertTemplate("statements.else-block", "v")
noremap <buffer> <silent> \sw :call C_InsertTemplate("statements.while")
onoremap <buffer> <silent> \swh :call C_InsertTemplate("statements.while-block")
nnoremap <buffer> <silent> \swh :call C_InsertTemplate("statements.while-block")
vnoremap <buffer> <silent> \swh :call C_InsertTemplate("statements.while-block", "v")
onoremap <buffer> <silent> \ss :call C_InsertTemplate("statements.switch")
nnoremap <buffer> <silent> \ss :call C_InsertTemplate("statements.switch")
vnoremap <buffer> <silent> \ss :call C_InsertTemplate("statements.switch", "v")
noremap <buffer> <silent> \sc :call C_InsertTemplate("statements.case")
onoremap <buffer> <silent> \s{ :call C_InsertTemplate("statements.block")
nnoremap <buffer> <silent> \s{ :call C_InsertTemplate("statements.block")
vnoremap <buffer> <silent> \s{ :call C_InsertTemplate("statements.block", "v")
onoremap <buffer> <silent> \sb :call C_InsertTemplate("statements.block")
nnoremap <buffer> <silent> \sb :call C_InsertTemplate("statements.block")
vnoremap <buffer> <silent> \sb :call C_InsertTemplate("statements.block", "v")
noremap <buffer> \ps :IncludeStdLibrary 
noremap <buffer> \pc :IncludeC99Library 
noremap <buffer> \+ps :IncludeCppLibrary 
noremap <buffer> \+pc :IncludeCppCLibrary 
noremap <buffer> <silent> \p< :call C_InsertTemplate("preprocessor.include-global")
noremap <buffer> <silent> \p" :call C_InsertTemplate("preprocessor.include-local")
noremap <buffer> <silent> \pd :call C_InsertTemplate("preprocessor.define")
noremap <buffer> <silent> \pu :call C_InsertTemplate("preprocessor.undefine")
onoremap <buffer> <silent> \pif :call C_InsertTemplate("preprocessor.if-endif")
nnoremap <buffer> <silent> \pif :call C_InsertTemplate("preprocessor.if-endif")
onoremap <buffer> <silent> \pie :call C_InsertTemplate("preprocessor.if-else-endif")
nnoremap <buffer> <silent> \pie :call C_InsertTemplate("preprocessor.if-else-endif")
onoremap <buffer> <silent> \pid :call C_InsertTemplate("preprocessor.ifdef-else-endif")
nnoremap <buffer> <silent> \pid :call C_InsertTemplate("preprocessor.ifdef-else-endif")
onoremap <buffer> <silent> \pin :call C_InsertTemplate("preprocessor.ifndef-else-endif")
nnoremap <buffer> <silent> \pin :call C_InsertTemplate("preprocessor.ifndef-else-endif")
onoremap <buffer> <silent> \pind :call C_InsertTemplate("preprocessor.ifndef-def-endif")
nnoremap <buffer> <silent> \pind :call C_InsertTemplate("preprocessor.ifndef-def-endif")
vnoremap <buffer> <silent> \pif :call C_InsertTemplate("preprocessor.if-endif", "v")
vnoremap <buffer> <silent> \pie :call C_InsertTemplate("preprocessor.if-else-endif", "v")
vnoremap <buffer> <silent> \pid :call C_InsertTemplate("preprocessor.ifdef-else-endif", "v")
vnoremap <buffer> <silent> \pin :call C_InsertTemplate("preprocessor.ifndef-else-endif", "v")
vnoremap <buffer> <silent> \pind :call C_InsertTemplate("preprocessor.ifndef-def-endif", "v")
onoremap <buffer> <silent> \pi0 :call C_PPIf0("a")
nnoremap <buffer> <silent> \pi0 :call C_PPIf0("a")
vnoremap <buffer> <silent> \pi0 :call C_PPIf0("v")
noremap <buffer> <silent> \pr0 :call C_PPIf0Remove()
noremap <buffer> <silent> \pe :call C_InsertTemplate("preprocessor.error")
noremap <buffer> <silent> \pl :call C_InsertTemplate("preprocessor.line")
noremap <buffer> <silent> \pp :call C_InsertTemplate("preprocessor.pragma")
onoremap <buffer> <silent> \if :call C_InsertTemplate("idioms.function")
nnoremap <buffer> <silent> \if :call C_InsertTemplate("idioms.function")
vnoremap <buffer> <silent> \if :call C_InsertTemplate("idioms.function", "v")
onoremap <buffer> <silent> \isf :call C_InsertTemplate("idioms.function-static")
nnoremap <buffer> <silent> \isf :call C_InsertTemplate("idioms.function-static")
vnoremap <buffer> <silent> \isf :call C_InsertTemplate("idioms.function-static", "v")
onoremap <buffer> <silent> \im :call C_InsertTemplate("idioms.main")
nnoremap <buffer> <silent> \im :call C_InsertTemplate("idioms.main")
vnoremap <buffer> <silent> \im :call C_InsertTemplate("idioms.main", "v")
onoremap <buffer> <silent> \i0 :call C_CodeFor("up"  )
nnoremap <buffer> <silent> \i0 :call C_CodeFor("up"  )
vnoremap <buffer> <silent> \i0 :call C_CodeFor("up"  )
onoremap <buffer> <silent> \in :call C_CodeFor("down")
nnoremap <buffer> <silent> \in :call C_CodeFor("down")
vnoremap <buffer> <silent> \in :call C_CodeFor("down")
onoremap <buffer> <silent> \ie :call C_InsertTemplate("idioms.enum")
nnoremap <buffer> <silent> \ie :call C_InsertTemplate("idioms.enum")
vnoremap <buffer> <silent> \ie :call C_InsertTemplate("idioms.enum"  , "v")
onoremap <buffer> <silent> \is :call C_InsertTemplate("idioms.struct")
nnoremap <buffer> <silent> \is :call C_InsertTemplate("idioms.struct")
vnoremap <buffer> <silent> \is :call C_InsertTemplate("idioms.struct", "v")
onoremap <buffer> <silent> \iu :call C_InsertTemplate("idioms.union")
nnoremap <buffer> <silent> \iu :call C_InsertTemplate("idioms.union")
vnoremap <buffer> <silent> \iu :call C_InsertTemplate("idioms.union" , "v")
noremap <buffer> <silent> \ip :call C_InsertTemplate("idioms.printf")
noremap <buffer> <silent> \isc :call C_InsertTemplate("idioms.scanf")
noremap <buffer> <silent> \ica :call C_InsertTemplate("idioms.calloc")
noremap <buffer> <silent> \ima :call C_InsertTemplate("idioms.malloc")
noremap <buffer> <silent> \ire :call C_InsertTemplate("idioms.realloc")
onoremap <buffer> <silent> \isi :call C_InsertTemplate("idioms.sizeof")
nnoremap <buffer> <silent> \isi :call C_InsertTemplate("idioms.sizeof")
vnoremap <buffer> <silent> \isi :call C_InsertTemplate("idioms.sizeof", "v")
onoremap <buffer> <silent> \ias :call C_InsertTemplate("idioms.assert")
nnoremap <buffer> <silent> \ias :call C_InsertTemplate("idioms.assert")
vnoremap <buffer> <silent> \ias :call C_InsertTemplate("idioms.assert", "v")
onoremap <buffer> <silent> \ii :call C_InsertTemplate("idioms.open-input-file")
nnoremap <buffer> <silent> \ii :call C_InsertTemplate("idioms.open-input-file")
vnoremap <buffer> <silent> \ii :call C_InsertTemplate("idioms.open-input-file", "v")
onoremap <buffer> <silent> \io :call C_InsertTemplate("idioms.open-output-file")
nnoremap <buffer> <silent> \io :call C_InsertTemplate("idioms.open-output-file")
vnoremap <buffer> <silent> \io :call C_InsertTemplate("idioms.open-output-file", "v")
noremap <buffer> <silent> \ifs :call C_InsertTemplate("idioms.fscanf")
noremap <buffer> <silent> \ifp :call C_InsertTemplate("idioms.fprintf")
noremap <buffer> <silent> \nr :call C_CodeSnippet("r")
onoremap <buffer> <silent> \nw :call C_CodeSnippet("w")
nnoremap <buffer> <silent> \nw :call C_CodeSnippet("w")
vnoremap <buffer> <silent> \nw :call C_CodeSnippet("wv")
noremap <buffer> <silent> \ne :call C_CodeSnippet("e")
onoremap <buffer> <silent> \np :call C_ProtoPick("function")
nnoremap <buffer> <silent> \np :call C_ProtoPick("function")
vnoremap <buffer> <silent> \np :call C_ProtoPick("function")
onoremap <buffer> <silent> \nf :call C_ProtoPick("function")
nnoremap <buffer> <silent> \nf :call C_ProtoPick("function")
vnoremap <buffer> <silent> \nf :call C_ProtoPick("function")
onoremap <buffer> <silent> \nm :call C_ProtoPick("method")
nnoremap <buffer> <silent> \nm :call C_ProtoPick("method")
vnoremap <buffer> <silent> \nm :call C_ProtoPick("method")
noremap <buffer> <silent> \ni :call C_ProtoInsert()
noremap <buffer> <silent> \nc :call C_ProtoClear()
noremap <buffer> <silent> \ns :call C_ProtoShow()
noremap <buffer> <silent> \ntl :call C_BrowseTemplateFiles("Local")
noremap <buffer> <silent> \ntr :call C_RereadTemplates()
noremap <buffer> \nts :CStyle 
noremap <buffer> <silent> \+" :call C_InsertTemplate("cpp.cout-operator")
noremap <buffer> <silent> \+co :call C_InsertTemplate("cpp.cout")
noremap <buffer> <silent> \+c :call C_InsertTemplate("cpp.class-definition")
noremap <buffer> <silent> \+cn :call C_InsertTemplate("cpp.class-using-new-definition")
noremap <buffer> <silent> \+ci :call C_InsertTemplate("cpp.class-implementation")
noremap <buffer> <silent> \+cni :call C_InsertTemplate("cpp.class-using-new-implementation")
noremap <buffer> <silent> \+mi :call C_InsertTemplate("cpp.method-implementation")
noremap <buffer> <silent> \+ai :call C_InsertTemplate("cpp.accessor-implementation")
noremap <buffer> <silent> \+tc :call C_InsertTemplate("cpp.template-class-definition")
noremap <buffer> <silent> \+tcn :call C_InsertTemplate("cpp.template-class-using-new-definition")
noremap <buffer> <silent> \+tci :call C_InsertTemplate("cpp.template-class-implementation")
noremap <buffer> <silent> \+tcni :call C_InsertTemplate("cpp.template-class-using-new-implementation")
noremap <buffer> <silent> \+tmi :call C_InsertTemplate("cpp.template-method-implementation")
noremap <buffer> <silent> \+tai :call C_InsertTemplate("cpp.template-accessor-implementation")
noremap <buffer> <silent> \+tf :call C_InsertTemplate("cpp.template-function")
noremap <buffer> <silent> \+ec :call C_InsertTemplate("cpp.error-class")
onoremap <buffer> <silent> \+tr :call C_InsertTemplate("cpp.try-catch")
nnoremap <buffer> <silent> \+tr :call C_InsertTemplate("cpp.try-catch")
vnoremap <buffer> <silent> \+tr :call C_InsertTemplate("cpp.try-catch", "v")
onoremap <buffer> <silent> \+ca :call C_InsertTemplate("cpp.catch")
nnoremap <buffer> <silent> \+ca :call C_InsertTemplate("cpp.catch")
vnoremap <buffer> <silent> \+ca :call C_InsertTemplate("cpp.catch", "v")
onoremap <buffer> <silent> \+c. :call C_InsertTemplate("cpp.catch-points")
nnoremap <buffer> <silent> \+c. :call C_InsertTemplate("cpp.catch-points")
vnoremap <buffer> <silent> \+c. :call C_InsertTemplate("cpp.catch-points", "v")
map <buffer> <silent> \rc :call C_Compile()
map <buffer> <silent> \rl :call C_Link()
map <buffer> <silent> \rr :call C_Run()
map <buffer> <silent> \ra :call C_Arguments()
map <buffer> <silent> \rm :call C_Make()
map <buffer> <silent> \rcm :call C_ChooseMakefile()
map <buffer> <silent> \rmc :call C_MakeClean()
map <buffer> <silent> \rme :call C_MakeExeToRun()
map <buffer> <silent> \rma :call C_MakeArguments()
map <buffer> <silent> \rp :call C_SplintCheck()
map <buffer> <silent> \rpa :call C_SplintArguments()
map <buffer> <silent> \rd :call C_Indent()
omap <buffer> <silent> \rh :call C_Hardcopy()
nmap <buffer> <silent> \rh :call C_Hardcopy()
map <buffer> <silent> \rs :call C_Settings()
vmap <buffer> <silent> \rh :call C_Hardcopy()
map <buffer> <silent> \rx :call C_XtermSize()
map <buffer> <silent> \ro :call C_Toggle_Gvim_Xterm()
map <buffer> <silent> \hp :call C_HelpCsupport()
map <buffer> <silent> \hm :call C_Help("m")
nmap <buffer> ]c <Plug>GitGutterNextHunk
xmap <buffer> ac <Plug>GitGutterTextObjectOuterVisual
omap <buffer> ac <Plug>GitGutterTextObjectOuterPending
xmap <buffer> ic <Plug>GitGutterTextObjectInnerVisual
omap <buffer> ic <Plug>GitGutterTextObjectInnerPending
vnoremap <buffer> {
map <buffer> <silent> <M-F9> :call C_Compile()
map <buffer> <silent> <F9> :call C_Link()
map <buffer> <silent> <C-F9> :call C_Run()
map <buffer> <silent> <S-F9> :call C_Arguments()
imap <buffer> <silent> g <Plug>delimitMateJumpMany
imap <buffer>  <Plug>delimitMateBS
imap <buffer> <silent> <NL> =C_JumpCtrlJ()
imap <buffer> " <Plug>delimitMate"
imap <buffer> ' <Plug>delimitMate'
imap <buffer> ( <Plug>delimitMate(
imap <buffer> ) <Plug>delimitMate)
inoremap <buffer> /* /*  */<Left><Left><Left>
inoremap <buffer> /*
imap <buffer> [ <Plug>delimitMate[
inoremap <buffer> <silent> \cl :call C_EndOfLineComment()
inoremap <buffer> <silent> \cj :call C_AdjustLineEndComm()
inoremap <buffer> <silent> \cfr :call C_InsertTemplate("comment.frame")
inoremap <buffer> <silent> \cfu :call C_InsertTemplate("comment.function")
inoremap <buffer> <silent> \cme :call C_InsertTemplate("comment.method")
inoremap <buffer> <silent> \ccl :call C_InsertTemplate("comment.class")
inoremap <buffer> <silent> \cfdi :call C_InsertTemplate("comment.file-description")
inoremap <buffer> <silent> \cfdh :call C_InsertTemplate("comment.file-description-header")
inoremap <buffer> <silent> \cd :call C_InsertDateAndTime('d')
inoremap <buffer> <silent> \ct :call C_InsertDateAndTime('dt')
inoremap <buffer> <silent> \cx :call C_CommentToggle( )
inoremap <buffer> \ccs :CFileSection 
inoremap <buffer> \chs :HFileSection 
inoremap <buffer> \ckc :KeywordComment 
inoremap <buffer> \csc :SpecialComment 
inoremap <buffer> <silent> \sd :call C_InsertTemplate("statements.do-while")
inoremap <buffer> <silent> \sf :call C_InsertTemplate("statements.for")
inoremap <buffer> <silent> \sfo :call C_InsertTemplate("statements.for-block")
inoremap <buffer> <silent> \si :call C_InsertTemplate("statements.if")
inoremap <buffer> <silent> \sif :call C_InsertTemplate("statements.if-block")
inoremap <buffer> <silent> \sie :call C_InsertTemplate("statements.if-else")
inoremap <buffer> <silent> \sife :call C_InsertTemplate("statements.if-block-else")
inoremap <buffer> <silent> \se :call C_InsertTemplate("statements.else-block")
inoremap <buffer> <silent> \sw :call C_InsertTemplate("statements.while")
inoremap <buffer> <silent> \swh :call C_InsertTemplate("statements.while-block")
inoremap <buffer> <silent> \ss :call C_InsertTemplate("statements.switch")
inoremap <buffer> <silent> \sc :call C_InsertTemplate("statements.case")
inoremap <buffer> <silent> \s{ :call C_InsertTemplate("statements.block")
inoremap <buffer> <silent> \sb :call C_InsertTemplate("statements.block")
inoremap <buffer> \ps :IncludeStdLibrary 
inoremap <buffer> \pc :IncludeC99Library 
inoremap <buffer> \+ps :IncludeCppLibrary 
inoremap <buffer> \+pc :IncludeCppC9Library 
inoremap <buffer> <silent> \p< :call C_InsertTemplate("preprocessor.include-global")
inoremap <buffer> <silent> \p" :call C_InsertTemplate("preprocessor.include-local")
inoremap <buffer> <silent> \pd :call C_InsertTemplate("preprocessor.define")
inoremap <buffer> <silent> \pu :call C_InsertTemplate("preprocessor.undefine")
inoremap <buffer> <silent> \pif :call C_InsertTemplate("preprocessor.if-endif")
inoremap <buffer> <silent> \pie :call C_InsertTemplate("preprocessor.if-else-endif")
inoremap <buffer> <silent> \pid :call C_InsertTemplate("preprocessor.ifdef-else-endif")
inoremap <buffer> <silent> \pin :call C_InsertTemplate("preprocessor.ifndef-else-endif")
inoremap <buffer> <silent> \pind :call C_InsertTemplate("preprocessor.ifndef-def-endif")
inoremap <buffer> <silent> \pi0 :call C_PPIf0("a")
inoremap <buffer> <silent> \pr0 :call C_PPIf0Remove()
inoremap <buffer> <silent> \pe :call C_InsertTemplate("preprocessor.error")
inoremap <buffer> <silent> \pl :call C_InsertTemplate("preprocessor.line")
inoremap <buffer> <silent> \pp :call C_InsertTemplate("preprocessor.pragma")
inoremap <buffer> <silent> \if :call C_InsertTemplate("idioms.function")
inoremap <buffer> <silent> \isf :call C_InsertTemplate("idioms.function-static")
inoremap <buffer> <silent> \im :call C_InsertTemplate("idioms.main")
inoremap <buffer> <silent> \i0 :call C_CodeFor("up"  )
inoremap <buffer> <silent> \in :call C_CodeFor("down")
inoremap <buffer> <silent> \ie :call C_InsertTemplate("idioms.enum")
inoremap <buffer> <silent> \is :call C_InsertTemplate("idioms.struct")
inoremap <buffer> <silent> \iu :call C_InsertTemplate("idioms.union")
inoremap <buffer> <silent> \ip :call C_InsertTemplate("idioms.printf")
inoremap <buffer> <silent> \isc :call C_InsertTemplate("idioms.scanf")
inoremap <buffer> <silent> \ica :call C_InsertTemplate("idioms.calloc")
inoremap <buffer> <silent> \ima :call C_InsertTemplate("idioms.malloc")
inoremap <buffer> <silent> \ire :call C_InsertTemplate("idioms.realloc")
inoremap <buffer> <silent> \isi :call C_InsertTemplate("idioms.sizeof")
inoremap <buffer> <silent> \ias :call C_InsertTemplate("idioms.assert")
inoremap <buffer> <silent> \ii :call C_InsertTemplate("idioms.open-input-file")
inoremap <buffer> <silent> \io :call C_InsertTemplate("idioms.open-output-file")
inoremap <buffer> <silent> \ifs :call C_InsertTemplate("idioms.fscanf")
inoremap <buffer> <silent> \ifp :call C_InsertTemplate("idioms.fprintf")
inoremap <buffer> <silent> \nr :call C_CodeSnippet("r")
inoremap <buffer> <silent> \nw :call C_CodeSnippet("w")
inoremap <buffer> <silent> \ne :call C_CodeSnippet("e")
inoremap <buffer> <silent> \np :call C_ProtoPick("function")
inoremap <buffer> <silent> \nf :call C_ProtoPick("function")
inoremap <buffer> <silent> \nm :call C_ProtoPick("method")
inoremap <buffer> <silent> \ni :call C_ProtoInsert()
inoremap <buffer> <silent> \nc :call C_ProtoClear()
inoremap <buffer> <silent> \ns :call C_ProtoShow()
inoremap <buffer> <silent> \ntl :call C_BrowseTemplateFiles("Local")
inoremap <buffer> <silent> \ntr :call C_RereadTemplates()
inoremap <buffer> \nts :CStyle 
inoremap <buffer> <silent> \+" :call C_InsertTemplate("cpp.cout-operator")
inoremap <buffer> <silent> \+co :call C_InsertTemplate("cpp.cout")
inoremap <buffer> <silent> \+c :call C_InsertTemplate("cpp.class-definition")
inoremap <buffer> <silent> \+cn :call C_InsertTemplate("cpp.class-using-new-definition")
inoremap <buffer> <silent> \+ci :call C_InsertTemplate("cpp.class-implementation")
inoremap <buffer> <silent> \+cni :call C_InsertTemplate("cpp.class-using-new-implementation")
inoremap <buffer> <silent> \+mi :call C_InsertTemplate("cpp.method-implementation")
inoremap <buffer> <silent> \+ai :call C_InsertTemplate("cpp.accessor-implementation")
inoremap <buffer> <silent> \+tc :call C_InsertTemplate("cpp.template-class-definition")
inoremap <buffer> <silent> \+tcn :call C_InsertTemplate("cpp.template-class-using-new-definition")
inoremap <buffer> <silent> \+tci :call C_InsertTemplate("cpp.template-class-implementation")
inoremap <buffer> <silent> \+tcni :call C_InsertTemplate("cpp.template-class-using-new-implementation")
inoremap <buffer> <silent> \+tmi :call C_InsertTemplate("cpp.template-method-implementation")
inoremap <buffer> <silent> \+tai :call C_InsertTemplate("cpp.template-accessor-implementation")
inoremap <buffer> <silent> \+tf :call C_InsertTemplate("cpp.template-function")
inoremap <buffer> <silent> \+ec :call C_InsertTemplate("cpp.error-class")
inoremap <buffer> <silent> \+tr :call C_InsertTemplate("cpp.try-catch")
inoremap <buffer> <silent> \+ca :call C_InsertTemplate("cpp.catch")
inoremap <buffer> <silent> \+c. :call C_InsertTemplate("cpp.catch-points")
imap <buffer> <silent> \rc :call C_Compile()
imap <buffer> <silent> \rl :call C_Link()
imap <buffer> <silent> \rr :call C_Run()
imap <buffer> <silent> \ra :call C_Arguments()
imap <buffer> <silent> \rm :call C_Make()
imap <buffer> <silent> \rmc :call C_MakeClean()
imap <buffer> <silent> \rme :call C_MakeExeToRun()
imap <buffer> <silent> \rma :call C_MakeArguments()
imap <buffer> <silent> \rp :call C_SplintCheck()
imap <buffer> <silent> \rpa :call C_SplintArguments()
imap <buffer> <silent> \rd :call C_Indent()
imap <buffer> <silent> \rh :call C_Hardcopy()
imap <buffer> <silent> \rs :call C_Settings()
imap <buffer> <silent> \rx :call C_XtermSize()
imap <buffer> <silent> \ro :call C_Toggle_Gvim_Xterm()
imap <buffer> <silent> \hp :call C_HelpCsupport()
imap <buffer> <silent> \hm :call C_Help("m")
imap <buffer> ] <Plug>delimitMate]
imap <buffer> ` <Plug>delimitMate`
inoremap <buffer> {
imap <buffer> { <Plug>delimitMate{
imap <buffer> } <Plug>delimitMate}
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal noautoindent
setlocal backupcopy=
setlocal binary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal cindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=sO:*\ -,mO:*\ \ ,exO:*/,s1:/*,mb:*,ex:*/,://
setlocal commentstring=/*%s*/
setlocal complete=.,w,b,u,t,i
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=~/.vim/plugged/c.vim/c-support/wordlists/c-c++-keywords.list,~/.vim/plugged/c.vim/c-support/wordlists/k+r.list,~/.vim/plugged/c.vim/c-support/wordlists/stl_index.list
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'cpp'
setlocal filetype=cpp
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=-1
setlocal include=
setlocal includeexpr=
setlocal indentexpr=
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=ccomplete#Complete
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal noscrollbind
setlocal shiftwidth=4
setlocal noshortname
setlocal signcolumn=auto
setlocal nosmartindent
setlocal softtabstop=0
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=%!airline#statusline(1)
setlocal suffixesadd=
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != 'cpp'
setlocal syntax=cpp
endif
setlocal tabstop=4
setlocal tagcase=
setlocal tags=
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal undolevels=-123456
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 1 - ((0 * winheight(0) + 25) / 50)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
wincmd w
argglobal
if bufexists('Window.cpp') | buffer Window.cpp | else | edit Window.cpp | endif
let s:cpo_save=&cpo
set cpo&vim
imap <buffer> <silent> <M-F9> :call C_Compile()
imap <buffer> <silent> <F9> :call C_Link()
imap <buffer> <silent> <C-F9> :call C_Run()
imap <buffer> <silent> <S-F9> :call C_Arguments()
imap <buffer> <S-Tab> <Plug>delimitMateS-Tab
imap <buffer> <S-BS> <Plug>delimitMateS-BS
imap <buffer> <BS> <Plug>delimitMateBS
nmap <buffer> <silent> <NL> i=C_JumpCtrlJ()
nmap <buffer> ,hp <Plug>GitGutterPreviewHunk
nmap <buffer> ,hu <Plug>GitGutterUndoHunk
nmap <buffer> ,hs <Plug>GitGutterStageHunk
vnoremap <buffer> /* s/*  */<Left><Left><Left>p
nmap <buffer> [c <Plug>GitGutterPrevHunk
onoremap <buffer> <silent> \cl :call C_EndOfLineComment()
nnoremap <buffer> <silent> \cl :call C_EndOfLineComment()
vnoremap <buffer> <silent> \cl :call C_EndOfLineComment()
nnoremap <buffer> <silent> \cj :call C_AdjustLineEndComm()
vnoremap <buffer> <silent> \cj :call C_AdjustLineEndComm()
noremap <buffer> <silent> \cs :call C_GetLineEndCommCol()
onoremap <buffer> <silent> \c* :call C_CodeToCommentC()
nnoremap <buffer> <silent> \c* :call C_CodeToCommentC()
vnoremap <buffer> <silent> \c* :call C_CodeToCommentC()
onoremap <buffer> <silent> \cc :call C_CodeToCommentCpp()
nnoremap <buffer> <silent> \cc :call C_CodeToCommentCpp()
vnoremap <buffer> <silent> \cc :call C_CodeToCommentCpp()
onoremap <buffer> <silent> \co :call C_CommentToCode()
nnoremap <buffer> <silent> \co :call C_CommentToCode()
vnoremap <buffer> <silent> \co :call C_CommentToCode()
noremap <buffer> <silent> \cfr :call C_InsertTemplate("comment.frame")
noremap <buffer> <silent> \cfu :call C_InsertTemplate("comment.function")
noremap <buffer> <silent> \cme :call C_InsertTemplate("comment.method")
noremap <buffer> <silent> \ccl :call C_InsertTemplate("comment.class")
noremap <buffer> <silent> \cfdi :call C_InsertTemplate("comment.file-description")
noremap <buffer> <silent> \cfdh :call C_InsertTemplate("comment.file-description-header")
onoremap <buffer> <silent> \cd :call C_InsertDateAndTime('d')
nnoremap <buffer> <silent> \cd :call C_InsertDateAndTime('d')
vnoremap <buffer> <silent> \cd s:call C_InsertDateAndTime('d')
onoremap <buffer> <silent> \ct :call C_InsertDateAndTime('dt')
nnoremap <buffer> <silent> \ct :call C_InsertDateAndTime('dt')
vnoremap <buffer> <silent> \ct s:call C_InsertDateAndTime('dt')
onoremap <buffer> <silent> \cx :call C_CommentToggle( )
nnoremap <buffer> <silent> \cx :call C_CommentToggle( )
vnoremap <buffer> <silent> \cx :call C_CommentToggle( )
noremap <buffer> \ccs :CFileSection 
noremap <buffer> \chs :HFileSection 
noremap <buffer> \ckc :KeywordComment 
noremap <buffer> \csc :SpecialComment 
onoremap <buffer> <silent> \sd :call C_InsertTemplate("statements.do-while")
nnoremap <buffer> <silent> \sd :call C_InsertTemplate("statements.do-while")
vnoremap <buffer> <silent> \sd :call C_InsertTemplate("statements.do-while", "v")
noremap <buffer> <silent> \sf :call C_InsertTemplate("statements.for")
onoremap <buffer> <silent> \sfo :call C_InsertTemplate("statements.for-block")
nnoremap <buffer> <silent> \sfo :call C_InsertTemplate("statements.for-block")
vnoremap <buffer> <silent> \sfo :call C_InsertTemplate("statements.for-block", "v")
noremap <buffer> <silent> \si :call C_InsertTemplate("statements.if")
onoremap <buffer> <silent> \sif :call C_InsertTemplate("statements.if-block")
nnoremap <buffer> <silent> \sif :call C_InsertTemplate("statements.if-block")
vnoremap <buffer> <silent> \sif :call C_InsertTemplate("statements.if-block", "v")
onoremap <buffer> <silent> \sie :call C_InsertTemplate("statements.if-else")
nnoremap <buffer> <silent> \sie :call C_InsertTemplate("statements.if-else")
vnoremap <buffer> <silent> \sie :call C_InsertTemplate("statements.if-else", "v")
onoremap <buffer> <silent> \sife :call C_InsertTemplate("statements.if-block-else")
nnoremap <buffer> <silent> \sife :call C_InsertTemplate("statements.if-block-else")
vnoremap <buffer> <silent> \sife :call C_InsertTemplate("statements.if-block-else", "v")
onoremap <buffer> <silent> \se :call C_InsertTemplate("statements.else-block")
nnoremap <buffer> <silent> \se :call C_InsertTemplate("statements.else-block")
vnoremap <buffer> <silent> \se :call C_InsertTemplate("statements.else-block", "v")
noremap <buffer> <silent> \sw :call C_InsertTemplate("statements.while")
onoremap <buffer> <silent> \swh :call C_InsertTemplate("statements.while-block")
nnoremap <buffer> <silent> \swh :call C_InsertTemplate("statements.while-block")
vnoremap <buffer> <silent> \swh :call C_InsertTemplate("statements.while-block", "v")
onoremap <buffer> <silent> \ss :call C_InsertTemplate("statements.switch")
nnoremap <buffer> <silent> \ss :call C_InsertTemplate("statements.switch")
vnoremap <buffer> <silent> \ss :call C_InsertTemplate("statements.switch", "v")
noremap <buffer> <silent> \sc :call C_InsertTemplate("statements.case")
onoremap <buffer> <silent> \s{ :call C_InsertTemplate("statements.block")
nnoremap <buffer> <silent> \s{ :call C_InsertTemplate("statements.block")
vnoremap <buffer> <silent> \s{ :call C_InsertTemplate("statements.block", "v")
onoremap <buffer> <silent> \sb :call C_InsertTemplate("statements.block")
nnoremap <buffer> <silent> \sb :call C_InsertTemplate("statements.block")
vnoremap <buffer> <silent> \sb :call C_InsertTemplate("statements.block", "v")
noremap <buffer> \ps :IncludeStdLibrary 
noremap <buffer> \pc :IncludeC99Library 
noremap <buffer> \+ps :IncludeCppLibrary 
noremap <buffer> \+pc :IncludeCppCLibrary 
noremap <buffer> <silent> \p< :call C_InsertTemplate("preprocessor.include-global")
noremap <buffer> <silent> \p" :call C_InsertTemplate("preprocessor.include-local")
noremap <buffer> <silent> \pd :call C_InsertTemplate("preprocessor.define")
noremap <buffer> <silent> \pu :call C_InsertTemplate("preprocessor.undefine")
onoremap <buffer> <silent> \pif :call C_InsertTemplate("preprocessor.if-endif")
nnoremap <buffer> <silent> \pif :call C_InsertTemplate("preprocessor.if-endif")
onoremap <buffer> <silent> \pie :call C_InsertTemplate("preprocessor.if-else-endif")
nnoremap <buffer> <silent> \pie :call C_InsertTemplate("preprocessor.if-else-endif")
onoremap <buffer> <silent> \pid :call C_InsertTemplate("preprocessor.ifdef-else-endif")
nnoremap <buffer> <silent> \pid :call C_InsertTemplate("preprocessor.ifdef-else-endif")
onoremap <buffer> <silent> \pin :call C_InsertTemplate("preprocessor.ifndef-else-endif")
nnoremap <buffer> <silent> \pin :call C_InsertTemplate("preprocessor.ifndef-else-endif")
onoremap <buffer> <silent> \pind :call C_InsertTemplate("preprocessor.ifndef-def-endif")
nnoremap <buffer> <silent> \pind :call C_InsertTemplate("preprocessor.ifndef-def-endif")
vnoremap <buffer> <silent> \pif :call C_InsertTemplate("preprocessor.if-endif", "v")
vnoremap <buffer> <silent> \pie :call C_InsertTemplate("preprocessor.if-else-endif", "v")
vnoremap <buffer> <silent> \pid :call C_InsertTemplate("preprocessor.ifdef-else-endif", "v")
vnoremap <buffer> <silent> \pin :call C_InsertTemplate("preprocessor.ifndef-else-endif", "v")
vnoremap <buffer> <silent> \pind :call C_InsertTemplate("preprocessor.ifndef-def-endif", "v")
onoremap <buffer> <silent> \pi0 :call C_PPIf0("a")
nnoremap <buffer> <silent> \pi0 :call C_PPIf0("a")
vnoremap <buffer> <silent> \pi0 :call C_PPIf0("v")
noremap <buffer> <silent> \pr0 :call C_PPIf0Remove()
noremap <buffer> <silent> \pe :call C_InsertTemplate("preprocessor.error")
noremap <buffer> <silent> \pl :call C_InsertTemplate("preprocessor.line")
noremap <buffer> <silent> \pp :call C_InsertTemplate("preprocessor.pragma")
onoremap <buffer> <silent> \if :call C_InsertTemplate("idioms.function")
nnoremap <buffer> <silent> \if :call C_InsertTemplate("idioms.function")
vnoremap <buffer> <silent> \if :call C_InsertTemplate("idioms.function", "v")
onoremap <buffer> <silent> \isf :call C_InsertTemplate("idioms.function-static")
nnoremap <buffer> <silent> \isf :call C_InsertTemplate("idioms.function-static")
vnoremap <buffer> <silent> \isf :call C_InsertTemplate("idioms.function-static", "v")
onoremap <buffer> <silent> \im :call C_InsertTemplate("idioms.main")
nnoremap <buffer> <silent> \im :call C_InsertTemplate("idioms.main")
vnoremap <buffer> <silent> \im :call C_InsertTemplate("idioms.main", "v")
onoremap <buffer> <silent> \i0 :call C_CodeFor("up"  )
nnoremap <buffer> <silent> \i0 :call C_CodeFor("up"  )
vnoremap <buffer> <silent> \i0 :call C_CodeFor("up"  )
onoremap <buffer> <silent> \in :call C_CodeFor("down")
nnoremap <buffer> <silent> \in :call C_CodeFor("down")
vnoremap <buffer> <silent> \in :call C_CodeFor("down")
onoremap <buffer> <silent> \ie :call C_InsertTemplate("idioms.enum")
nnoremap <buffer> <silent> \ie :call C_InsertTemplate("idioms.enum")
vnoremap <buffer> <silent> \ie :call C_InsertTemplate("idioms.enum"  , "v")
onoremap <buffer> <silent> \is :call C_InsertTemplate("idioms.struct")
nnoremap <buffer> <silent> \is :call C_InsertTemplate("idioms.struct")
vnoremap <buffer> <silent> \is :call C_InsertTemplate("idioms.struct", "v")
onoremap <buffer> <silent> \iu :call C_InsertTemplate("idioms.union")
nnoremap <buffer> <silent> \iu :call C_InsertTemplate("idioms.union")
vnoremap <buffer> <silent> \iu :call C_InsertTemplate("idioms.union" , "v")
noremap <buffer> <silent> \ip :call C_InsertTemplate("idioms.printf")
noremap <buffer> <silent> \isc :call C_InsertTemplate("idioms.scanf")
noremap <buffer> <silent> \ica :call C_InsertTemplate("idioms.calloc")
noremap <buffer> <silent> \ima :call C_InsertTemplate("idioms.malloc")
noremap <buffer> <silent> \ire :call C_InsertTemplate("idioms.realloc")
onoremap <buffer> <silent> \isi :call C_InsertTemplate("idioms.sizeof")
nnoremap <buffer> <silent> \isi :call C_InsertTemplate("idioms.sizeof")
vnoremap <buffer> <silent> \isi :call C_InsertTemplate("idioms.sizeof", "v")
onoremap <buffer> <silent> \ias :call C_InsertTemplate("idioms.assert")
nnoremap <buffer> <silent> \ias :call C_InsertTemplate("idioms.assert")
vnoremap <buffer> <silent> \ias :call C_InsertTemplate("idioms.assert", "v")
onoremap <buffer> <silent> \ii :call C_InsertTemplate("idioms.open-input-file")
nnoremap <buffer> <silent> \ii :call C_InsertTemplate("idioms.open-input-file")
vnoremap <buffer> <silent> \ii :call C_InsertTemplate("idioms.open-input-file", "v")
onoremap <buffer> <silent> \io :call C_InsertTemplate("idioms.open-output-file")
nnoremap <buffer> <silent> \io :call C_InsertTemplate("idioms.open-output-file")
vnoremap <buffer> <silent> \io :call C_InsertTemplate("idioms.open-output-file", "v")
noremap <buffer> <silent> \ifs :call C_InsertTemplate("idioms.fscanf")
noremap <buffer> <silent> \ifp :call C_InsertTemplate("idioms.fprintf")
noremap <buffer> <silent> \nr :call C_CodeSnippet("r")
onoremap <buffer> <silent> \nw :call C_CodeSnippet("w")
nnoremap <buffer> <silent> \nw :call C_CodeSnippet("w")
vnoremap <buffer> <silent> \nw :call C_CodeSnippet("wv")
noremap <buffer> <silent> \ne :call C_CodeSnippet("e")
onoremap <buffer> <silent> \np :call C_ProtoPick("function")
nnoremap <buffer> <silent> \np :call C_ProtoPick("function")
vnoremap <buffer> <silent> \np :call C_ProtoPick("function")
onoremap <buffer> <silent> \nf :call C_ProtoPick("function")
nnoremap <buffer> <silent> \nf :call C_ProtoPick("function")
vnoremap <buffer> <silent> \nf :call C_ProtoPick("function")
onoremap <buffer> <silent> \nm :call C_ProtoPick("method")
nnoremap <buffer> <silent> \nm :call C_ProtoPick("method")
vnoremap <buffer> <silent> \nm :call C_ProtoPick("method")
noremap <buffer> <silent> \ni :call C_ProtoInsert()
noremap <buffer> <silent> \nc :call C_ProtoClear()
noremap <buffer> <silent> \ns :call C_ProtoShow()
noremap <buffer> <silent> \ntl :call C_BrowseTemplateFiles("Local")
noremap <buffer> <silent> \ntr :call C_RereadTemplates()
noremap <buffer> \nts :CStyle 
noremap <buffer> <silent> \+" :call C_InsertTemplate("cpp.cout-operator")
noremap <buffer> <silent> \+co :call C_InsertTemplate("cpp.cout")
noremap <buffer> <silent> \+c :call C_InsertTemplate("cpp.class-definition")
noremap <buffer> <silent> \+cn :call C_InsertTemplate("cpp.class-using-new-definition")
noremap <buffer> <silent> \+ci :call C_InsertTemplate("cpp.class-implementation")
noremap <buffer> <silent> \+cni :call C_InsertTemplate("cpp.class-using-new-implementation")
noremap <buffer> <silent> \+mi :call C_InsertTemplate("cpp.method-implementation")
noremap <buffer> <silent> \+ai :call C_InsertTemplate("cpp.accessor-implementation")
noremap <buffer> <silent> \+tc :call C_InsertTemplate("cpp.template-class-definition")
noremap <buffer> <silent> \+tcn :call C_InsertTemplate("cpp.template-class-using-new-definition")
noremap <buffer> <silent> \+tci :call C_InsertTemplate("cpp.template-class-implementation")
noremap <buffer> <silent> \+tcni :call C_InsertTemplate("cpp.template-class-using-new-implementation")
noremap <buffer> <silent> \+tmi :call C_InsertTemplate("cpp.template-method-implementation")
noremap <buffer> <silent> \+tai :call C_InsertTemplate("cpp.template-accessor-implementation")
noremap <buffer> <silent> \+tf :call C_InsertTemplate("cpp.template-function")
noremap <buffer> <silent> \+ec :call C_InsertTemplate("cpp.error-class")
onoremap <buffer> <silent> \+tr :call C_InsertTemplate("cpp.try-catch")
nnoremap <buffer> <silent> \+tr :call C_InsertTemplate("cpp.try-catch")
vnoremap <buffer> <silent> \+tr :call C_InsertTemplate("cpp.try-catch", "v")
onoremap <buffer> <silent> \+ca :call C_InsertTemplate("cpp.catch")
nnoremap <buffer> <silent> \+ca :call C_InsertTemplate("cpp.catch")
vnoremap <buffer> <silent> \+ca :call C_InsertTemplate("cpp.catch", "v")
onoremap <buffer> <silent> \+c. :call C_InsertTemplate("cpp.catch-points")
nnoremap <buffer> <silent> \+c. :call C_InsertTemplate("cpp.catch-points")
vnoremap <buffer> <silent> \+c. :call C_InsertTemplate("cpp.catch-points", "v")
map <buffer> <silent> \rc :call C_Compile()
map <buffer> <silent> \rl :call C_Link()
map <buffer> <silent> \rr :call C_Run()
map <buffer> <silent> \ra :call C_Arguments()
map <buffer> <silent> \rm :call C_Make()
map <buffer> <silent> \rcm :call C_ChooseMakefile()
map <buffer> <silent> \rmc :call C_MakeClean()
map <buffer> <silent> \rme :call C_MakeExeToRun()
map <buffer> <silent> \rma :call C_MakeArguments()
map <buffer> <silent> \rp :call C_SplintCheck()
map <buffer> <silent> \rpa :call C_SplintArguments()
map <buffer> <silent> \rd :call C_Indent()
omap <buffer> <silent> \rh :call C_Hardcopy()
nmap <buffer> <silent> \rh :call C_Hardcopy()
map <buffer> <silent> \rs :call C_Settings()
vmap <buffer> <silent> \rh :call C_Hardcopy()
map <buffer> <silent> \rx :call C_XtermSize()
map <buffer> <silent> \ro :call C_Toggle_Gvim_Xterm()
map <buffer> <silent> \hp :call C_HelpCsupport()
map <buffer> <silent> \hm :call C_Help("m")
nmap <buffer> ]c <Plug>GitGutterNextHunk
xmap <buffer> ac <Plug>GitGutterTextObjectOuterVisual
omap <buffer> ac <Plug>GitGutterTextObjectOuterPending
xmap <buffer> ic <Plug>GitGutterTextObjectInnerVisual
omap <buffer> ic <Plug>GitGutterTextObjectInnerPending
vnoremap <buffer> {
map <buffer> <silent> <M-F9> :call C_Compile()
map <buffer> <silent> <F9> :call C_Link()
map <buffer> <silent> <C-F9> :call C_Run()
map <buffer> <silent> <S-F9> :call C_Arguments()
imap <buffer> <silent> g <Plug>delimitMateJumpMany
imap <buffer>  <Plug>delimitMateBS
imap <buffer> <silent> <NL> =C_JumpCtrlJ()
imap <buffer> " <Plug>delimitMate"
imap <buffer> ' <Plug>delimitMate'
imap <buffer> ( <Plug>delimitMate(
imap <buffer> ) <Plug>delimitMate)
inoremap <buffer> /* /*  */<Left><Left><Left>
inoremap <buffer> /*
imap <buffer> [ <Plug>delimitMate[
inoremap <buffer> <silent> \cl :call C_EndOfLineComment()
inoremap <buffer> <silent> \cj :call C_AdjustLineEndComm()
inoremap <buffer> <silent> \cfr :call C_InsertTemplate("comment.frame")
inoremap <buffer> <silent> \cfu :call C_InsertTemplate("comment.function")
inoremap <buffer> <silent> \cme :call C_InsertTemplate("comment.method")
inoremap <buffer> <silent> \ccl :call C_InsertTemplate("comment.class")
inoremap <buffer> <silent> \cfdi :call C_InsertTemplate("comment.file-description")
inoremap <buffer> <silent> \cfdh :call C_InsertTemplate("comment.file-description-header")
inoremap <buffer> <silent> \cd :call C_InsertDateAndTime('d')
inoremap <buffer> <silent> \ct :call C_InsertDateAndTime('dt')
inoremap <buffer> <silent> \cx :call C_CommentToggle( )
inoremap <buffer> \ccs :CFileSection 
inoremap <buffer> \chs :HFileSection 
inoremap <buffer> \ckc :KeywordComment 
inoremap <buffer> \csc :SpecialComment 
inoremap <buffer> <silent> \sd :call C_InsertTemplate("statements.do-while")
inoremap <buffer> <silent> \sf :call C_InsertTemplate("statements.for")
inoremap <buffer> <silent> \sfo :call C_InsertTemplate("statements.for-block")
inoremap <buffer> <silent> \si :call C_InsertTemplate("statements.if")
inoremap <buffer> <silent> \sif :call C_InsertTemplate("statements.if-block")
inoremap <buffer> <silent> \sie :call C_InsertTemplate("statements.if-else")
inoremap <buffer> <silent> \sife :call C_InsertTemplate("statements.if-block-else")
inoremap <buffer> <silent> \se :call C_InsertTemplate("statements.else-block")
inoremap <buffer> <silent> \sw :call C_InsertTemplate("statements.while")
inoremap <buffer> <silent> \swh :call C_InsertTemplate("statements.while-block")
inoremap <buffer> <silent> \ss :call C_InsertTemplate("statements.switch")
inoremap <buffer> <silent> \sc :call C_InsertTemplate("statements.case")
inoremap <buffer> <silent> \s{ :call C_InsertTemplate("statements.block")
inoremap <buffer> <silent> \sb :call C_InsertTemplate("statements.block")
inoremap <buffer> \ps :IncludeStdLibrary 
inoremap <buffer> \pc :IncludeC99Library 
inoremap <buffer> \+ps :IncludeCppLibrary 
inoremap <buffer> \+pc :IncludeCppC9Library 
inoremap <buffer> <silent> \p< :call C_InsertTemplate("preprocessor.include-global")
inoremap <buffer> <silent> \p" :call C_InsertTemplate("preprocessor.include-local")
inoremap <buffer> <silent> \pd :call C_InsertTemplate("preprocessor.define")
inoremap <buffer> <silent> \pu :call C_InsertTemplate("preprocessor.undefine")
inoremap <buffer> <silent> \pif :call C_InsertTemplate("preprocessor.if-endif")
inoremap <buffer> <silent> \pie :call C_InsertTemplate("preprocessor.if-else-endif")
inoremap <buffer> <silent> \pid :call C_InsertTemplate("preprocessor.ifdef-else-endif")
inoremap <buffer> <silent> \pin :call C_InsertTemplate("preprocessor.ifndef-else-endif")
inoremap <buffer> <silent> \pind :call C_InsertTemplate("preprocessor.ifndef-def-endif")
inoremap <buffer> <silent> \pi0 :call C_PPIf0("a")
inoremap <buffer> <silent> \pr0 :call C_PPIf0Remove()
inoremap <buffer> <silent> \pe :call C_InsertTemplate("preprocessor.error")
inoremap <buffer> <silent> \pl :call C_InsertTemplate("preprocessor.line")
inoremap <buffer> <silent> \pp :call C_InsertTemplate("preprocessor.pragma")
inoremap <buffer> <silent> \if :call C_InsertTemplate("idioms.function")
inoremap <buffer> <silent> \isf :call C_InsertTemplate("idioms.function-static")
inoremap <buffer> <silent> \im :call C_InsertTemplate("idioms.main")
inoremap <buffer> <silent> \i0 :call C_CodeFor("up"  )
inoremap <buffer> <silent> \in :call C_CodeFor("down")
inoremap <buffer> <silent> \ie :call C_InsertTemplate("idioms.enum")
inoremap <buffer> <silent> \is :call C_InsertTemplate("idioms.struct")
inoremap <buffer> <silent> \iu :call C_InsertTemplate("idioms.union")
inoremap <buffer> <silent> \ip :call C_InsertTemplate("idioms.printf")
inoremap <buffer> <silent> \isc :call C_InsertTemplate("idioms.scanf")
inoremap <buffer> <silent> \ica :call C_InsertTemplate("idioms.calloc")
inoremap <buffer> <silent> \ima :call C_InsertTemplate("idioms.malloc")
inoremap <buffer> <silent> \ire :call C_InsertTemplate("idioms.realloc")
inoremap <buffer> <silent> \isi :call C_InsertTemplate("idioms.sizeof")
inoremap <buffer> <silent> \ias :call C_InsertTemplate("idioms.assert")
inoremap <buffer> <silent> \ii :call C_InsertTemplate("idioms.open-input-file")
inoremap <buffer> <silent> \io :call C_InsertTemplate("idioms.open-output-file")
inoremap <buffer> <silent> \ifs :call C_InsertTemplate("idioms.fscanf")
inoremap <buffer> <silent> \ifp :call C_InsertTemplate("idioms.fprintf")
inoremap <buffer> <silent> \nr :call C_CodeSnippet("r")
inoremap <buffer> <silent> \nw :call C_CodeSnippet("w")
inoremap <buffer> <silent> \ne :call C_CodeSnippet("e")
inoremap <buffer> <silent> \np :call C_ProtoPick("function")
inoremap <buffer> <silent> \nf :call C_ProtoPick("function")
inoremap <buffer> <silent> \nm :call C_ProtoPick("method")
inoremap <buffer> <silent> \ni :call C_ProtoInsert()
inoremap <buffer> <silent> \nc :call C_ProtoClear()
inoremap <buffer> <silent> \ns :call C_ProtoShow()
inoremap <buffer> <silent> \ntl :call C_BrowseTemplateFiles("Local")
inoremap <buffer> <silent> \ntr :call C_RereadTemplates()
inoremap <buffer> \nts :CStyle 
inoremap <buffer> <silent> \+" :call C_InsertTemplate("cpp.cout-operator")
inoremap <buffer> <silent> \+co :call C_InsertTemplate("cpp.cout")
inoremap <buffer> <silent> \+c :call C_InsertTemplate("cpp.class-definition")
inoremap <buffer> <silent> \+cn :call C_InsertTemplate("cpp.class-using-new-definition")
inoremap <buffer> <silent> \+ci :call C_InsertTemplate("cpp.class-implementation")
inoremap <buffer> <silent> \+cni :call C_InsertTemplate("cpp.class-using-new-implementation")
inoremap <buffer> <silent> \+mi :call C_InsertTemplate("cpp.method-implementation")
inoremap <buffer> <silent> \+ai :call C_InsertTemplate("cpp.accessor-implementation")
inoremap <buffer> <silent> \+tc :call C_InsertTemplate("cpp.template-class-definition")
inoremap <buffer> <silent> \+tcn :call C_InsertTemplate("cpp.template-class-using-new-definition")
inoremap <buffer> <silent> \+tci :call C_InsertTemplate("cpp.template-class-implementation")
inoremap <buffer> <silent> \+tcni :call C_InsertTemplate("cpp.template-class-using-new-implementation")
inoremap <buffer> <silent> \+tmi :call C_InsertTemplate("cpp.template-method-implementation")
inoremap <buffer> <silent> \+tai :call C_InsertTemplate("cpp.template-accessor-implementation")
inoremap <buffer> <silent> \+tf :call C_InsertTemplate("cpp.template-function")
inoremap <buffer> <silent> \+ec :call C_InsertTemplate("cpp.error-class")
inoremap <buffer> <silent> \+tr :call C_InsertTemplate("cpp.try-catch")
inoremap <buffer> <silent> \+ca :call C_InsertTemplate("cpp.catch")
inoremap <buffer> <silent> \+c. :call C_InsertTemplate("cpp.catch-points")
imap <buffer> <silent> \rc :call C_Compile()
imap <buffer> <silent> \rl :call C_Link()
imap <buffer> <silent> \rr :call C_Run()
imap <buffer> <silent> \ra :call C_Arguments()
imap <buffer> <silent> \rm :call C_Make()
imap <buffer> <silent> \rmc :call C_MakeClean()
imap <buffer> <silent> \rme :call C_MakeExeToRun()
imap <buffer> <silent> \rma :call C_MakeArguments()
imap <buffer> <silent> \rp :call C_SplintCheck()
imap <buffer> <silent> \rpa :call C_SplintArguments()
imap <buffer> <silent> \rd :call C_Indent()
imap <buffer> <silent> \rh :call C_Hardcopy()
imap <buffer> <silent> \rs :call C_Settings()
imap <buffer> <silent> \rx :call C_XtermSize()
imap <buffer> <silent> \ro :call C_Toggle_Gvim_Xterm()
imap <buffer> <silent> \hp :call C_HelpCsupport()
imap <buffer> <silent> \hm :call C_Help("m")
imap <buffer> ] <Plug>delimitMate]
imap <buffer> ` <Plug>delimitMate`
inoremap <buffer> {
imap <buffer> { <Plug>delimitMate{
imap <buffer> } <Plug>delimitMate}
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal noautoindent
setlocal backupcopy=
setlocal binary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal cindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=sO:*\ -,mO:*\ \ ,exO:*/,s1:/*,mb:*,ex:*/,://
setlocal commentstring=/*%s*/
setlocal complete=.,w,b,u,t,i
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=~/.vim/plugged/c.vim/c-support/wordlists/c-c++-keywords.list,~/.vim/plugged/c.vim/c-support/wordlists/k+r.list,~/.vim/plugged/c.vim/c-support/wordlists/stl_index.list
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'cpp'
setlocal filetype=cpp
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=-1
setlocal include=
setlocal includeexpr=
setlocal indentexpr=
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=ccomplete#Complete
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal noscrollbind
setlocal shiftwidth=4
setlocal noshortname
setlocal signcolumn=auto
setlocal nosmartindent
setlocal softtabstop=0
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=%!airline#statusline(2)
setlocal suffixesadd=
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != 'cpp'
setlocal syntax=cpp
endif
setlocal tabstop=4
setlocal tagcase=
setlocal tags=
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal undolevels=-123456
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 23 - ((22 * winheight(0) + 25) / 50)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
23
normal! 057|
wincmd w
exe 'vert 1resize ' . ((&columns * 89 + 89) / 179)
exe 'vert 2resize ' . ((&columns * 89 + 89) / 179)
tabedit simple.vs
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winminheight=1 winheight=1 winminwidth=1 winwidth=1
exe 'vert 1resize ' . ((&columns * 89 + 89) / 179)
exe 'vert 2resize ' . ((&columns * 89 + 89) / 179)
argglobal
let s:cpo_save=&cpo
set cpo&vim
imap <buffer> <S-Tab> <Plug>delimitMateS-Tab
imap <buffer> <S-BS> <Plug>delimitMateS-BS
imap <buffer> <BS> <Plug>delimitMateBS
nmap <buffer> ,hp <Plug>GitGutterPreviewHunk
nmap <buffer> ,hu <Plug>GitGutterUndoHunk
nmap <buffer> ,hs <Plug>GitGutterStageHunk
nmap <buffer> [c <Plug>GitGutterPrevHunk
nmap <buffer> ]c <Plug>GitGutterNextHunk
xmap <buffer> ac <Plug>GitGutterTextObjectOuterVisual
omap <buffer> ac <Plug>GitGutterTextObjectOuterPending
xmap <buffer> ic <Plug>GitGutterTextObjectInnerVisual
omap <buffer> ic <Plug>GitGutterTextObjectInnerPending
imap <buffer> <silent> g <Plug>delimitMateJumpMany
imap <buffer>  <Plug>delimitMateBS
imap <buffer> " <Plug>delimitMate"
imap <buffer> ' <Plug>delimitMate'
imap <buffer> ( <Plug>delimitMate(
imap <buffer> ) <Plug>delimitMate)
imap <buffer> [ <Plug>delimitMate[
imap <buffer> ] <Plug>delimitMate]
imap <buffer> ` <Plug>delimitMate`
imap <buffer> { <Plug>delimitMate{
imap <buffer> } <Plug>delimitMate}
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal noautoindent
setlocal backupcopy=
setlocal binary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=:#
setlocal commentstring=#\ %s
setlocal complete=.,w,b,u,t,i
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'conf'
setlocal filetype=conf
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=-1
setlocal include=
setlocal includeexpr=
setlocal indentexpr=
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal noscrollbind
setlocal shiftwidth=4
setlocal noshortname
setlocal signcolumn=auto
setlocal nosmartindent
setlocal softtabstop=0
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=%!airline#statusline(1)
setlocal suffixesadd=
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != 'conf'
setlocal syntax=conf
endif
setlocal tabstop=4
setlocal tagcase=
setlocal tags=
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal undolevels=-123456
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 12 - ((11 * winheight(0) + 25) / 50)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
12
normal! 012|
wincmd w
argglobal
if bufexists('simple.fs') | buffer simple.fs | else | edit simple.fs | endif
let s:cpo_save=&cpo
set cpo&vim
imap <buffer> <S-Tab> <Plug>delimitMateS-Tab
imap <buffer> <S-BS> <Plug>delimitMateS-BS
imap <buffer> <BS> <Plug>delimitMateBS
nmap <buffer> ,hp <Plug>GitGutterPreviewHunk
nmap <buffer> ,hu <Plug>GitGutterUndoHunk
nmap <buffer> ,hs <Plug>GitGutterStageHunk
nmap <buffer> [c <Plug>GitGutterPrevHunk
nmap <buffer> ]c <Plug>GitGutterNextHunk
xmap <buffer> ac <Plug>GitGutterTextObjectOuterVisual
omap <buffer> ac <Plug>GitGutterTextObjectOuterPending
xmap <buffer> ic <Plug>GitGutterTextObjectInnerVisual
omap <buffer> ic <Plug>GitGutterTextObjectInnerPending
imap <buffer> <silent> g <Plug>delimitMateJumpMany
imap <buffer>  <Plug>delimitMateBS
imap <buffer> " <Plug>delimitMate"
imap <buffer> ' <Plug>delimitMate'
imap <buffer> ( <Plug>delimitMate(
imap <buffer> ) <Plug>delimitMate)
imap <buffer> [ <Plug>delimitMate[
imap <buffer> ] <Plug>delimitMate]
imap <buffer> ` <Plug>delimitMate`
imap <buffer> { <Plug>delimitMate{
imap <buffer> } <Plug>delimitMate}
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal noautoindent
setlocal backupcopy=
setlocal binary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=s1:/*,mb:*,ex:*/,://,b:#,:%,:XCOMM,n:>,fb:-
setlocal commentstring=/*%s*/
setlocal complete=.,w,b,u,t,i
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'fsharp'
setlocal filetype=fsharp
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=tcq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=-1
setlocal include=
setlocal includeexpr=
setlocal indentexpr=GetFsharpIndent()
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e,0=and,0=class,0=constraint,0=done,0=else,0=end,0=exception,0=external,0=if,0=in,0=include,0=inherit,0=let,0=method,0=open,0=then,0=type,0=val,0=with,0;;,0>],0|],0>},0|,0},0],0)
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal noscrollbind
setlocal shiftwidth=4
setlocal noshortname
setlocal signcolumn=auto
setlocal nosmartindent
setlocal softtabstop=0
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=%!airline#statusline(2)
setlocal suffixesadd=
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != 'fsharp'
setlocal syntax=fsharp
endif
setlocal tabstop=4
setlocal tagcase=
setlocal tags=
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal undolevels=-123456
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 18 - ((17 * winheight(0) + 25) / 50)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
18
normal! 05|
wincmd w
2wincmd w
exe 'vert 1resize ' . ((&columns * 89 + 89) / 179)
exe 'vert 2resize ' . ((&columns * 89 + 89) / 179)
tabnext 8
if exists('s:wipebuf')
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToO
set winminheight=1 winminwidth=1
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :