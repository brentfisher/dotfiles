set noswapfile
syntax on
call plug#begin('~/.vim/plugged')
Plug 'git://github.com/markabe/bufexplorer.git'
Plug 'tomtom/tcomment_vim'
Plug 'git://github.com/Shougo/unite.vim.git'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-fugitive'
Plug 'kien/ctrlp.vim'
Plug 'godlygeek/tabular'
Plug 'vim-ruby/vim-ruby'
Plug 'Lokaltog/vim-powerline'
Plug 'https://github.com/scrooloose/nerdtree.git'
Plug 'tomtom/tlib_vim'
Plug 'pangloss/vim-javascript'
Plug 'flazz/vim-colorschemes'
Plug 'fatih/vim-go'
Plug 'digitaltoad/vim-jade'
call plug#end()

syntax on

colorscheme gruvbox
set background=dark

set noswapfile
set wildignore+=*/tmp/*,*/node_modules/*
set autoread
set viewoptions=folds,options,cursor,unix,slash
set tabstop=2
set shiftwidth=2
set softtabstop=2
set shiftround
set expandtab
set relativenumber
set number
set smartindent
set pastetoggle=<F2>

nnoremap <leader>q :q!
map q: :q

let mapleader=","
let g:Powerline_symbols = 'fancy'
let g:ctrlp_working_path_mode = 'r'

autocmd BufRead,BufNewFile *.md,*.markdown set filetype=md autoread
autocmd BufRead,BufNewFile *.jade set filetype=jade autoread
autocmd BufRead,BufNewFile *.handlebars set filetype=html autoread
autocmd BufRead,BufNewFile *.json,*.gyp set filetype=javascript autoread
autocmd BufRead,BufNewFile html set smartindent
