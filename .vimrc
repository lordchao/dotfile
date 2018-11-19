set nocompatible              " be iMproved, required
filetype on                  " required

call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'
"Plug 'vim-scripts/indentpython.vim'
Plug 'nvie/vim-flake8'
Plug 'vim-airline/vim-airline'
Plug 'Valloric/YouCompleteMe'
Plug 'w0rp/ale'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'Yggdroot/indentLine'
Plug 'jiangmiao/auto-pairs'
"Plug 'tell-k/vim-autopep8'
Plug 'iamcco/mathjax-support-for-mkdp'
Plug 'iamcco/markdown-preview.vim'
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'tpope/vim-surround'
Plug 'skywind3000/asyncrun.vim'
Plug 'scrooloose/nerdcommenter'
call plug#end()            " required

filetype plugin indent on    " required
"setting
set nu
set softtabstop=4
set shiftwidth=4
set smartindent
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
set completeopt=menu,menuone "关闭自动弹出的窗口
let g:ycm_semantic_triggers =  {
			\ 'c,cpp,python,java,go,erlang,perl': ['re!\w{4}'],
			\ 'cs,lua,javascript': ['re!\w{4}'],
			\ }
let g:ycm_python_binary_path='/Users/liuchao/anaconda3/bin/python'
let g:ycm_autoclose_preview_window_after_completion=1
let g:ycm_add_preview_to_completeopt = 0
let g:ycm_show_diagnostics_ui = 0
let g:ycm_global_ycm_extra_conf= '~/.vim/plugged/YouCompleteMe/third_party/ycmd/examples/.ycm_extra_conf.py'
map <C-g>:YcmCompleter GoToDefinitionElseDeclaration<CR>

"ale
let g:airline#extensions#ale#enabled = 1

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

let mapleader = " "
nnoremap <Leader>q :quit<CR>
nnoremap <Leader>w :up<CR>
nnoremap <Leader>s :source %<CR>
nnoremap <Leader>r :w<CR>:!clear;/Users/liuchao/anaconda3/bin/python %<CR>
nnoremap <Leader>m :AsyncRun make<CR>
nnoremap <Leader>f :FZF<CR>

"Toggle relative numbering, and set to absolute on loss of focus or insert mode
set rnu
function! ToggleNumbersOn()
    set nu!
    set rnu
endfunction
function! ToggleRelativeOn()
    set rnu!
    set nu
endfunction
autocmd FocusLost * call ToggleRelativeOn()
autocmd FocusGained * call ToggleRelativeOn()
autocmd InsertEnter * call ToggleRelativeOn()
autocmd InsertLeave * call ToggleRelativeOn()

"复制匿名寄存器内容到剪贴板
"set clipboard=unnamed
"Control p MRU for most recently used
set wildignore+=*/tmp/*,*.so,*.swp,*.zip

let g:AutoPairsShortcutFastWrap = '<Leader-b>'

let g:asyncrun_open = 6
