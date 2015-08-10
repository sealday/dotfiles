set nocompatible
filetype off

set runtimepath+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'bling/vim-airline'
Plugin 'scrooloose/nerdtree'
"Plugin 'sealday/conque'
"Plugin 'digitaltoad/vim-jade'
"Plugin 'godlygeek/tabular'
"Plugin 'plasticboy/vim-markdown'
"Plugin 'othree/html5.vim'
"Plugin 'bling/vim-airline'
call vundle#end()

filetype plugin indent on
syntax on

set number
set title
"set mouse=

set encoding=utf-8
set autoindent
set expandtab
"set listchars=trail:·,eol:_

" set list
set tabstop=4
set shiftwidth=2
set softtabstop=2


" inoremap kj <Esc>
"add a semicolon ';' at the end of the line
" nnoremap ;; A;<Esc>

" it's something interesting, you can use it, when in need.
"set relativenumber

" for NERDTree
map <Leader>n :NERDTreeToggle<CR>

" no bell sound
" set noeb
" enable screen flash
set visualbell

" for other encoding
set fileencodings=utf8,gbk
set wildmenu
set incsearch

let g:airline#extensions#tabline#enabled = 1
let g:airline_left_sep = '► '
let g:airline_right_sep = '◀︎ '

