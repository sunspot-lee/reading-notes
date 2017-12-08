" When started as "evim", evim.vim will already have done these settings.
if v:progname =~? "evim"
  finish
endif

" 1
set nocompatible
" 2
set path=.,,**
set incsearch
set ignorecase
set smartcase
" 4
set linebreak
set display=lastline,uhex
set number
set relativenumber
" 5
set hlsearch
" 10
set guifont=Consolas:h12
"set guifontwide=Micorsoft\ YaHei\ UI:h12
set renderoptions=type:directx
"set langmenu=zh_CN.UTF-8
" 12
set ruler
" 14
set backspace=indent,eol,start
set showmatch
" 15
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent
set smartindent
" 16
set foldmethod=syntax
" 19
set autowrite
set autoread
" 21
set wildmenu
" 23
set makeencoding=char
" 26
set encoding=utf-8
set fileencodings=ucs-bom,utf-8,default,latin1
set ambiwidth=double
" 27
set virtualedit=block
set pythonthreedll=python36.dll

"language message zh_CN.UTF-8

filetype off
call plug#begin('~/vimfiles/plugged')

Plug 'junegunn/fzf'
Plug 'valloric/listtoggle'
Plug 'majutsushi/tagbar'
Plug 'bling/vim-airline'
Plug 'easymotion/vim-easymotion'
Plug 'scrooloose/nerdcommenter'
Plug 'tpope/vim-surround'
Plug 'godlygeek/tabular'
"Plug 'valloric/youcompleteme'
Plug 'w0rp/ale'
Plug 'ervandew/supertab'
Plug 'klen/python-mode'

call plug#end()
filetype plugin indent on
syntax on

"source $VIMRUNTIME/mswin.vim
behave mswin
noremap <C-S> :update<CR>
noremap <C-F4> <C-W>c
vnoremap <C-X> "+x
vnoremap <C-C> "+y
map <C-V> "+gP

" for cursor
nnoremap j gj
nnoremap k gk
noremap <C-Down> <C-E>
noremap <C-Up> <C-Y>

" for windows
noremap <C-H> <C-W>h
noremap <C-J> <C-W>j
noremap <C-K> <C-W>k
noremap <C-L> <C-W>l

" for search & substitute
set grepprg=rg\ --vimgrep
vnoremap * y/\V<C-R>"<CR>
nnoremap <C-F> :grep -F -w "<C-R><C-W>"
vnoremap <C-F> y:grep -F "<C-R>""
nnoremap <C-\> :,$s/\V\<<C-R><C-W>\>/
vnoremap <C-\> y:,$s/\V<C-R>"/
nnoremap <F3> :cprev<CR>
nnoremap <F4> :cnext<CR>

" 首字母大写
nnoremap gc guiw~w
" 全单词大写
nnoremap gU gUiww
" 全单词小写
nnoremap gu guiww

" for matchit
packadd! matchit

" for FZF
nnoremap <F6> :FZF<CR>

" for ListToggle
let g:lt_quickfix_list_toggle_map = '<F7>'
"let g:lt_location_list_toggle_map = '<F7>'

" for Tagbar
nnoremap <F8> :TagbarToggle<CR>
let g:tagbar_sort = 0

" for NERDCommenter
let NERDMenuMode = 0

" for youcompleteme
nnoremap <F12> :YcmCompleter GoTo<CR>

" for python-mode
let g:pymode_options_max_line_length = 100
let g:pymode_virtualenv = 0
let g:pymode_rope = 0

autocmd BufReadPost *
    \ if line("'\"") > 1 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif

function! Compile(cc)
    wall
    cgetexpr system(substitute(a:cc, '%', '\=expand("%")', ''))
    bot copen
endfunction
command! -nargs=* Vc set efm& | call Compile('vcenv && cl <args>')
command! -nargs=* Vc64 set efm& | call Compile('vcenv 64 && cl <args>')
command! -nargs=* Lnt set efm=%f:%l:%c:\ %m | call Compile('lint <args>')

augroup C
    autocmd!
    autocmd FileType c,cpp set nowrap
    autocmd FileType c set grepprg=rg\ --vimgrep\ -t\ c
    autocmd FileType cpp set grepprg=rg\ --vimgrep\ -t\ cpp
augroup END

augroup Matlab
    autocmd!
    autocmd FileType matlab set nowrap
    autocmd FileType matlab set grepprg=rg\ --vimgrep\ -t\ matlab
augroup END

augroup Python
    autocmd!
    autocmd FileType python set nowrap
    autocmd FileType python set grepprg=rg\ --vimgrep\ -t\ py
augroup END
