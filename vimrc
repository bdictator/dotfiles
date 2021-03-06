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
"Colors
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax enable
set t_Co=256
"colorscheme darkblue
colorscheme termcolor
"colorscheme molokai
"colorscheme Tomorrow-Night-Bright



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
map <C-t> :NERDTreeToggle<CR>

"nerdcommenter ,cc ,cu ,ci ,cm

"Use neocomplete.
let g:neocomplete#enable_at_startup = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1


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
Plugin 'scrooloose/nerdcommenter'
Plugin 'Shougo/neocomplete.vim'
Plugin 'c.vim'
Plugin 'ctrlp.vim'

Plugin 'terryma/vim-multiple-cursors'
Plugin 'mattn/emmet-vim'
Plugin 'pangloss/vim-javascript'
Plugin 'ternjs/tern_for_vim.git'
Plugin 'Chiel92/vim-autoformat'

call vundle#end()            " required
filetype plugin indent on    " required
