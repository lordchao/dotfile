set nocompatible              " be iMproved, required
filetype off                  " required

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
"Plugin 'python-mode/python-mode', { 'branch': 'develop' }

"Plugin 'JamshedVesuna/vim-markdown-preview'
" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" git repos on your local machine (i.e. when working on your own plugin)
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
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

" 一键执行python
imap <F5> <Esc>:w<CR>:!clear;/Users/liuchao/anaconda3/bin/python %<CR>
"缩进指示线"
"let g:indentLine_char='┆'
"let g:indentLine_enabled = 1

"let g:jedi#completions_command = "<C-j>"
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

"qiuck save file
nmap <F2> :update<CR>

let mapleader = ","
nnoremap <Leader>e : quit<CR>
