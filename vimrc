set nocompatible
filetype off
set runtimepath+=~/.vim/bundle/Vundle.vim

" plugins {{{
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'bling/vim-airline'
Plugin 'Shougo/unite.vim'
Plugin 'Shougo/neomru.vim'
Plugin 'majutsushi/tagbar'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-surround'
Plugin 'mattn/emmet-vim'
"Plugin 'Valloric/YouCompleteMe'
"Plugin 'sealday/conque'
"Plugin 'digitaltoad/vim-jade'
"Plugin 'godlygeek/tabular'
"Plugin 'plasticboy/vim-markdown'
"Plugin 'othree/html5.vim'
"Plugin 'bling/vim-airline'
call vundle#end()
" }}}

filetype plugin indent on
syntax on

set nonumber
" 尝试一下，能不能习惯用这个，也不知道有没有必要使用相对的行号
" 不过今天看到 相对行号里面可以看到当前的行号，觉得可以测试一下
" 当然，这个得在启用 number 的情况下才可以看到当前行号
" 在我发现，如果文件比较大的情况下，行号占了好多列之后，我决定把number关了
" 我可以从下面的状态栏看到有多少行
set relativenumber

set title
set list
set listchars=tab:▸\ ,eol:¬,extends:❯,precedes:❮
"set mouse=
set encoding=utf-8
set autoindent
set expandtab
set showcmd
"set listchars=trail:·,eol:_
"
set autowrite
set autoread


" set list
set tabstop=2
set shiftwidth=2
set softtabstop=2
set wrap
" 这个格式化的选项值得看一下，不过现在没什么需求
" set formatoptions=qrn1
" 这个似乎是兼容性选项，兼容什么的最讨厌了
" set cpo+=J


" inoremap kj <Esc>
"add a semicolon ';' at the end of the line
" nnoremap ;; A;<Esc>

" it's something interesting, you can use it, when in need.
"set relativenumber


let mapleader = ' '
map <Leader>t :TagbarToggle<CR>
" for NERDTree
map <Leader>n :NERDTreeToggle<CR>
map <Leader>u :Unite file_rec<CR>i
map <Leader>l :bn<CR>
map <Leader>h :bp<CR>

" no bell sound
" set noeb
" enable screen flash
set visualbell

" for other encoding
" gbk
set fileencodings=utf8
set wildmenu
set incsearch

set ignorecase
set smartcase

" 默认开启全局匹配
" 换句话说就是，一行内会替换所有匹配项
set gdefault
set hlsearch

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.crypt = '🔒'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" custom bufferline or filename
let g:airline_section_c = '%t'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_alt_sep = '▶'
let g:airline#extensions#tabline#left_sep = '▶'
let g:airline#extensions#tabline#buffer_idx_mode = 1
nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9

nmap <c-j> <c-]>
nmap <c-k> <c-o>
nmap <leader>x :bdelete<CR>
" let g:airline#extensions#bufferline#enabled = 1
" let g:airline#extensions#bufferline#overwrite_variables = 1

"let g:netrw_liststyle     = 3
"let g:netrw_winsize       = 25 
"let g:netrw_preview       = 1
"let g:netrw_browse_split  = 4
"let g:netrw_alto          = 1
"let g:netrw_browsex_viewer= "open"

set splitbelow
set splitright

"set omnifunc=syntaxcomplete#Complete
colo desert
colo elflord
set laststatus=2

set hidden

nnoremap <leader>ev :edit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

" 稍微处理了一下 命令行模式下 键绑定，这样可以不使用 左右键来移动
" 我覆盖了原来按 <c-f> 进入命令行窗口，
" 因为暂时不用，而且我可以通过另一个方式进去 q:
" 这些键绑定属于 原来 readline 里面的键绑定
" <c-u> 可以删除光标前所有字符
" <c-w> 可以删除光标前一个单词
cnoremap <c-a> <home>
cnoremap <c-b> <Left>
cnoremap <c-f> <Right>

" 初始化脚本内的一个变量 dotvim，用来获取 .vim 的路径
" 我这里似乎没必要这么复杂，但是我也没有什么理由换掉这个，感觉差不太多
let s:dotvim = fnamemodify(globpath(&rtp, 'vim.dir'), ':p:h')
exec 'set backupdir=' . s:dotvim . '/tmp/backup/'
exec 'set undodir=' . s:dotvim . '/tmp/undo/'
exec 'set directory=' . s:dotvim . '/tmp/swap/'
set backup
set undofile
set undolevels=3000
set undoreload=10000

" 自动重新更新 vim 配置
autocmd! BufWritePost $MYVIMRC source $MYVIMRC

set cursorline
augroup cline
  au!
  au WinLeave * set nocursorline 
  au WinEnter * set cursorline 
  au InsertEnter * set nocursorline 
  au InsertLeave * set cursorline 
augroup END

autocmd BufReadPost *
  \ if line("'\"") >= 1 && line("'\"") <= line("$") |
  \   exe "normal! g`\"" |
  \ endif
augroup END

set backspace=indent,eol,start

" 这个应该是用来显示当前在哪一行哪一列，但是在有airline之后，似乎没有什么作用
" set ruler


" 低行模式说明（关于当前文件的格式呀，编码呀等等）
" set modelines=0

" 这又是一个奇怪的东西，设置当前窗口的最小宽度？ 
" set winwidth


" 发现一个问题 它会莫名其妙最后状态栏变得很淡的颜色
" 不知道怎么重现

" 这个应该和补全有关系
"set completeopt=longest,menuone,preview

" 字典 i_CTRL-X_CTRL-K
set dictionary=/usr/share/dict/words

" 如果词末尾有空格，它会显示出来
augroup trailing
    au!
    au InsertEnter * :set listchars-=trail:␣
    au InsertLeave * :set listchars+=trail:␣
augroup END

" clear search matching
noremap <leader><space> :noh<cr>:call clearmatches()<cr>
noremap * *<c-o>

" .folding {{{
set foldlevelstart=0
set foldmethod=syntax
" }}}

" 使用语法补全（没有特有的补全的语言就是用最基础的语法补全）
set omnifunc=syntaxcomplete#Complete

" _ Vim {{{
augroup ft_vim
  au!

  au FileType vim setlocal foldmethod=marker
  au FileType help setlocal textwidth=78
  au BufWinEnter *.txt if &ft == 'help' | wincmd L | endif
augroup END
" }}}

inoremap kj 
augroup ft_tmux
  au!

  au BufRead,BufNewFile .tmux.conf set ft=tmux
  au BufRead,BufNewFile tmux.conf set ft=tmux
augroup END
