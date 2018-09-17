set nocompatible              " be iMproved, required
filetype on                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
"Plugin 'vim-scripts/indentpython.vim'
Plugin 'nvie/vim-flake8'
"Plugin 'Lokaltog/powerline'
Plugin 'vim-airline/vim-airline'
"Plugin 'davidhalter/jedi-vim'
Plugin 'Valloric/YouCompleteMe'
"Plugin 'scrooloose/syntastic'
Plugin 'Yggdroot/indentLine'
Plugin 'jiangmiao/auto-pairs'
"Plugin 'tell-k/vim-autopep8'
Plugin 'iamcco/mathjax-support-for-mkdp'
Plugin 'iamcco/markdown-preview.vim'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'kien/ctrlp.vim'

call vundle#end()            " required

filetype plugin indent on    " required
"setting
set nu
set expandtab           " enter spaces when tab is pressed
set textwidth=120       " break lines when line length increases
set tabstop=4           " use 4 spaces to represent tab
set softtabstop=4
set shiftwidth=4        " number of spaces to use for auto indent
set autoindent  

syntax enable
set background=dark
colorscheme solarized
set guifont=Roboto\ Mono\ Medium\ for\ Powerline:h24,Monaco:h18

"nerd tree
map <C-n> :NERDTreeToggle<CR>
let NERDTreeIgnore=['\~$', '\.pyc$', '\.swp$']

"缩进指示线"
"let g:indentLine_char='┆'
"let g:indentLine_enabled = 1

set fileencoding=utf-8

"ycm
let g:ycm_python_binary_path='/Users/liuchao/anaconda3/bin/python'
let g:ycm_autoclose_preview_window_after_completion=1
map <C-g>:YcmCompleter GoToDefinitionElseDeclaration<CR>
"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"markdown
let g:mkdp_path_to_chrome = "open -a Google\\ Chrome"

let g:vim_markdown_math = 1
let g:vim_markdown_folding_disabled = 1

set switchbuf=usetab
nnoremap <F8> :bnext<CR>
nnoremap <S-F8> :bprevious<CR>

let mapleader = ","
nnoremap <Leader>q :quit<CR>
nnoremap <Leader>w :up<CR>
nnoremap <Leader>s :source %<CR>
nnoremap <Leader>r :w<CR>:!clear;/Users/liuchao/anaconda3/bin/python %<CR>

"复制匿名寄存器内容到剪贴板
set clipboard=unnamed
"Control p MRU for most recently used
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
