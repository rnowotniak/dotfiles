"
"  Robert Nowotniak,  2001-2018
"
syn on
set ic autoindent hlsearch incsearch nowrap
finish " !!!


"
"  I used to use all below settings (and much more) many years back.
"  Now, I simply use very basic settings like a few lines above, and I switch to more robust editor like VS code
"
finish " !!! :)



set enc=utf8
set rtp+=~/.vim.own

autocmd BufReadPost * if line("'\"") && line("'\"") <= line("$") |
	\ exe "normal `\"z." | endif

set nowrap ignorecase laststatus=2
set mouse=a " enable mouse support
set grepprg=grep\ -nsHI\ --exclude=tags\ --exclude-dir=.svn\ $*\ /dev/null
set listchars=eol:$,tab:>-
set cpoptions+=$ " When making a change to one line, don't redisplay the line, but put a '$' at the end of the changed text.
set showcmd " Show (partial) command in the last line of the screen.
set autoindent " Copy indent from current line when starting a new line 
set hlsearch incsearch
set wildmenu " command line completion in an enhanced mode
set modeline
set fencs=utf8,iso8859-2
set formatoptions+=ro " insert comment automatically after new line

syntax on " syntax highlighting
filetype plugin indent on " enable filetype detection, filetype plugins support and filetype indentation

" plugins settings

" minibuf settings
"let g:miniBufExplModSelTarget = 1 
let g:miniBufExplUseSingleClick = 1


command Date :normal a<c-r>=strftime("%c")<c-[>
command Udifft :if &diff | set nodiff noscb sbo-=hor fdm=manual foldcolumn=0 | endif
command Strip :execute "%s/[[:blank:]]\\+$//e" | execute "norm \<c-o>"
command Delim :exe "norm o--------8<--------8<--------8<--------8<--------8<--------8<--------8<"
command Modeline :norm a vim: set :

nnoremap <F2> :MBEbp<cr>
nnoremap <F3> :MBEbn<cr>
nnoremap <F4> :cprevious<cr>
nnoremap <F5> :cnext<cr>


nnoremap gr :grep <cword> *<cr>
nnoremap Gr :grep -r <cword> %:p:h<cr>
nnoremap gR :grep -i <cword> *<cr>
nnoremap GR :grep -ir <cword> %:p:h<cr>
nnoremap [g :grep -ir <cword> *<CR>
nnoremap [G :grep -ir <cWORD> *<CR>
nnoremap \g :grep -ir '' *<Left><Left><Left>
nnoremap <C-h> :set hlsearch!<CR>
nnoremap \p :set paste!<CR> " remove?

inoremap <C-d> <Delete>
inoremap <C-f> <Right>
inoremap <C-b> <Left>

" template system
autocmd BufNewFile * sil! exe "read ~/.vim.own/templates/"
   \ . expand("<afile>:e") | 1d |
   \ sil! exe "source ~/.vim.own/templates/" . expand("<afile>:e") . ".vim"

" minibuf

" vimcolorschemetest
"if has("gui_running")
"	colorscheme BlackSea
"else
"	colorscheme darkblack
"endif
colorscheme sean

finish





"
"
" OLD STUFF
"
"

" autocmds {{{
"autocmd BufWinLeave * if &bt=="help" | bwipeout | endif
"autocmd BufNewFile *.[pP][lL] execute "normal I#!/usr/bin/perl -w\eo\r\r"
"autocmd BufNewFile *.c sil! read ~/.vim/templates/c | echo "(".expand("<afile>").") is a new file" | 1d
"autocmd BufNewFile *.cpp sil! read ~/.vim/templates/cpp | echo "(".expand("<afile>").") is a new file" | 1d
"autocmd BufWritePost,FileWritePost *.[pP][lL] call system("chmod u+x ".expand("<afile>"))
"autocmd BufNewFile,BufReadPre *.[pP][lL] set cms=\ #%s
"autocmd BufReadPre,BufNewFile *.[vV][iI][mM],.[vV][iI][mM][rR][cC],*.[cC],*.[pP][lL]
"	\ :call MapujF12(expand("<afile>:p"))
"autocmd BufReadPost,BufNewFile *.[aA][dD][bB] :call MapujF12(expand("<afile>:p"))
"autocmd FileType *.[aA][dD][bB] :call MapujF12(expand("<afile>:p"))
"autocmd BufNewFile *.[hH][tT][mM][lL],*.[hH][tT][mM],*.[pP][hH][pP],*.[pP][hH][pP]{3,4}
"	\ sil! read ~/.vim/templates/html | call HtmlKeys()
"autocmd BufNewFile *.[hH][tT][mM][lL],*.[hH][tT][mM],*.[pP][hH][pP],*.[pP][hH][pP]{3,4}
"	\ call HtmlKeys()
"autocmd BufNewFile *.[aA][wW][kK] sil! read ~/.vim/templates/awk | 1d
"autocmd BufNewFile *.py sil! read ~/.vim/templates/python | 1d | 5
"autocmd BufReadPost /tmp/mutt-* call PrepareMail()
"autocmd BufReadPost /tmp/SLRN* nnoremap <Leader>S :exe "w" \| !ispell -H %<CR>

autocmd BufNewFile * sil! exe "read ~/.vim.own/templates/"
   \ . expand("<afile>:e") | 1d |
   \ sil! exe "source ~/.vim.own/templates/" . expand("<afile>:e") . ".vim"

" Nale¿y pomijaæ pewne czynno¶ci dla bardzo du¿ych plików (sk³adnia itp).
let g:DuzyPlik = 2 "MB
let g:DuzyPlik = g:DuzyPlik * 1024 * 1024
augroup DuzyPlik
	autocmd BufReadPre * let f=expand("<afile>") |
		\ if getfsize(f) > g:DuzyPlik | set eventignore+=FileType |
		\ setlocal noswapfile bufhidden=unload buftype=nowrite undolevels=-1 |
		\ else | set eventignore-=FileType | endif
augroup END
" }}}

" ustawienia {{{
set nowrap nocompatible showmatch listchars=eol:$,tab:>- cpo&vim cpo+=$
set hlsearch ignorecase ruler showcmd novisualbell isf-==" novb
set siso=5 ffs=unix,dos shiftwidth=3 tabstop=3 backspace=2 shortmess+=I
set maxmem=1024 maxmemtot=6144 dictionary=/usr/share/dict/polish
set autoindent laststatus=2 formatoptions=croqn1 ttimeoutlen=80
set langmenu=pl_pl.iso_8859-2 grepprg=grep\ -nsHI\ --exclude=tags\ $*\ /dev/null
set mouse= fencs=default

set autoindent laststatus=2
set path+=/usr/src/linux/include/**,/usr/lib/gcc-lib/i386-linux/2.95.4/include,
	\/usr/include,/usr/include/*
"set nomodeline
let g:explVertical=1
let g:explSplitRight=0
let g:explWinSize=30
let g:explDetailedList=1
filetype plugin indent on
syntax enable
if !has("win32")
	source $VIMRUNTIME/ftplugin/man.vim
endif
command Html :runtime syntax/2html.vim
if !exists("$REMOTE_HOST") && !exists("$SSH_TTY")
	set ttyfast incsearch wildmenu " Tylko dla szybkich terminali
else
	set nottyfast noincsearch nowildmenu
endif
set guioptions-=T
" }}}


" Ustawienia klawiatury {{{
if argc()>1
	nnoremap <F2> :previous<cr>
	nnoremap <F3> :next<cr>
else
	nnoremap <F2> :cprevious<cr>
	nnoremap <F3> :cnext<cr>
endif
nnoremap <F4> :Explore<cr>
nnoremap <F5> :set bl! \| echo "Buffer ".bufnr("%").": ".(&bl?"Listed":"Not Listed")<CR>
if !has("win16") && !has("win32")
	nnoremap <F9> :call Resolve(expand("<cWORD>"))<CR>
endif
nnoremap <F7> :marks<cr>
nnoremap <F6> :registers<cr>
nnoremap <Esc>[R41 :grep -Eir '' *<Left><Left><Left>
nnoremap <C-^> <C-^>'"

nnoremap ¶ :exe ":hi" synIDattr(synID(line("."),col("."),1),"name")<CR>
nnoremap <A-S> :exe ":hi" synIDattr(synID(line("."),col("."),1),"name")<CR>
nnoremap <c-w><c-b> :GotoBufExplorerWindow<cr>
nnoremap <c-w><c-f> :GotoFileExplorerWindow<cr>
nnoremap <c-w><c-t> :WMToggle<cr>
nnoremap <C-h> :set hlsearch!<CR>:echo ""<CR>
inoremap <C-k> <Esc><right>v$<left>d
nnoremap <Esc>_ o <Backspace><Esc>:exe "norm " . strlen(substitute(getline(line(".") - 1), "^\\s*\\(.\\{-}\\)\\s*$", "\\1", "")) . "a-"<CR>k
nnoremap <Enter> :call KlEnter()<CR>
nnoremap \l :!clear;echo;echo;echo;pwd;echo;ls -la --color=auto;echo;echo;echo<CR>

nnoremap <PageUp> :bnext<CR>
nnoremap <PageDown> :bprevious<CR>

nnoremap H :call Hcontext()<CR>
nnoremap L :call Lcontext()<CR>

nnoremap j gj
nnoremap k gk

" }}}

function Hcontext()
	if winline()==1 && line(".")!=1
		exe "normal! \<c-B>"
	endif
	exe "normal! H"
	echo ""
endfunc

function Lcontext()
	if winline()==winheight(0) && line(".")!=line("$")
		exe "normal! \<c-F>"
	endif
	exe "normal! L"
	echo ""
endfunc

" {{{     Dodatkowe skrypty i wtyczki trzymam w oddzielnych plikach:
"            Prosty manad¿er okien, buforów
"            Skrypt do rysowania linii, ramek
"            Przegl±darka stron Info
"            matchit
"            ..
" }}}


