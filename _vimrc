" When started as "evim", evim.vim will already have done these settings.
if v:progname =~? "evim"
  finish
endif

" 1
set nocompatible
" 2
set path+=** " buffer
set incsearch
"set ignorecase
"set smartcase
" 4
set display=lastline,uhex
set number " local
" 5
set hlsearch
set cursorline " window
" 10
set guifont=Consolas:h12
set guifontwide=KaiTi:h12
set renderoptions=type:directx
" 12
set ruler
set visualbell
" 14
set backspace=indent,eol,start
set showmatch
" 15
set tabstop=4 " buffer
set shiftwidth=4 " buffer
set autoindent " buffer
set smartindent " buffer
" 16
set foldlevel=99 " window
set foldmethod=syntax " window
" 17
set diffopt+=iwhite,indent-heuristic,algorithm:histogram
" 19
set autowrite
set autoread " buffer
" 20
set directory=$TEMP
" 21
set wildmenu
" 23
set makeencoding=char " buffer
" 26
set encoding=utf-8
set ambiwidth=double
" 27
set virtualedit=block

filetype off

call plug#begin('~/vimfiles/plugged')

Plug 'mhinz/vim-signify'
nmap <leader>v :SignifyHunkDiff<CR>
nmap <leader>u :SignifyHunkUndo<CR>

Plug 'Yggdroot/LeaderF'
let g:Lf_WildIgnore = { 'dir': ['.*'], 'file': [] }
let g:Lf_Gtagsconf = 'd:/Tools/Global/share/gtags/gtags.conf'
let g:Lf_Gtagslabel = 'native-pygments'
let g:Lf_GtagsAutoGenerate = 1
nmap <leader>m :LeaderfMru<CR>
map <F2> :LeaderfFunction<CR>
map <F3> :LeaderfRgInteractive<CR><C-R><C-W>
map <F4> :Leaderf gtags --by-context<CR>

Plug 'valloric/listtoggle'
let g:lt_location_list_toggle_map = '<leader>l'
let g:lt_quickfix_list_toggle_map = '<leader>q'
nmap <A-Up> :cprevious<CR>
nmap <A-Down> :cnext<CR>

Plug 'easymotion/vim-easymotion'
nmap s         <Plug>(easymotion-s2)
nmap <Leader>s <Plug>(easymotion-sn)
"<Plug>(easymotion-jumptoanywhere)

Plug 'tpope/vim-repeat'

Plug 'scrooloose/nerdcommenter'
let NERDMenuMode = 0

Plug 'tpope/vim-surround'

Plug 'andrewradev/linediff.vim'

Plug 'davidhalter/jedi-vim', { 'for': 'python' }
let g:jedi#completions_command = "<C-N>"
let g:jedi#popup_on_dot = 0
let g:jedi#show_call_signatures = 2

call plug#end()

"filetype plugin indent on
syntax on

packadd! matchit
packadd! editexisting

"behave mswin
map <C-S> :update<CR>
map <C-F4> <C-W>c

" for cursor
nmap j gj
nmap k gk

" for windows
nmap <C-H> <C-W>h
nmap <C-J> <C-W>j
nmap <C-K> <C-W>k
nmap <C-L> <C-W>l
tmap <C-h> <C-w>h
tmap <C-j> <C-w>j
tmap <C-k> <C-w>k
tmap <C-l> <C-w>l

" for 输入法
set imactivatekey=C-space
imap <ESC> <ESC>:set iminsert=2<CR>

" 搜索选中字符串
vmap * y/\V\<<C-R>=escape(@",'/\')<CR>\><CR>

autocmd BufReadPost *
    \ if line("'\"") > 1 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif

command -nargs=* Pylint compiler pylint | make -d C <args> %
command -nargs=* Python compiler python | make % <args>

augroup Python
	autocmd!
	autocmd FileType python setlocal nowrap
	autocmd FileType python setlocal foldmethod=indent
	autocmd FileType python map <F5> :Python<CR>
	autocmd FileType python map <S-F5> :!ipython --pdb %<CR>
augroup END
