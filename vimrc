""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"General
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"set mapleader
let mapleader=','
"no compatible with vi, required for vundle
set nocompatible

"line number
set number

"use hard tabs
set tabstop=4
set noexpandtab
set shiftwidth=4
set expandtab
set smarttab

"show title as console title bar
set title

"display incomplete commands in last line
set showcmd

"show matching braces
set showmatch

set nobackup

"file encodings
set fileencodings=utf-8,gbk,big5,ucs-bom,cp936
set encoding=utf8

"turn on commandline completion wildstyle overwritting status line
set wildmenu
set wildmode=longest:full,full

"set backspace more flexible
set backspace=eol,start,indent

"Indent
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"new line has the same indent with previous line
set autoindent

"use C programing language to detece whether indent
set smartindent

"configure indent / clever indent for {,if,swith,etc.
set cindent

"enable filetypes
filetype plugin indent on
filetype plugin on

"use soft tabs for python
autocmd FileType python set et sta ts=4 sw=4


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Code Fold
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"enable fold
"set foldmethod=syntax
"use space to toggle fold
"nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo') <CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Colors
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax enable
set t_Co=256
"colorscheme darkblue
"colorscheme termcolor
colorscheme molokai



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Search Match
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set ignorecase
"case still sensitive when one or more letter is capital
set smartcase
"high light the word when searching
set hlsearch
"increamental search
set incsearch


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Status Line
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"always have a status line
set laststatus=2

"set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%04l,%04v]\ [%p%%]\ [LEN=%L]
"set statusline=%F%w\ [FORMAT=%{&ff}]\ [%p%%]\ [LEN=%L]

"allow displaying incomplete line
set display=lastline

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Plugins
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"ctags & cscope
set tags=tags
set tags+=/usr/include/tags
"use both cscope and ctag
set cscopetag

"close vim if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Key Binding && Mappings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"move among vim window
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k

"tab navigation
nnoremap tp :tabprevious<CR>
nnoremap tn :tabnext<CR>
nnoremap to :tabnew<CR>
nnoremap tc :tabclose<CR>
"open filename under curor in new tab
nnoremap gf <C-W>gf

"ctrl+n open nerdtree
map <C-n> :NERDTreeToggle<CR>


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Vundle
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
set nocompatible             
filetype off                  

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree.git'
Plugin 'c.vim'

call vundle#end()            " required
filetype plugin indent on    " required
