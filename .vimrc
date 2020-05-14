set nocompatible
set noswapfile
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
Plug 'StanAngeloff/php.vim'
Plug 'mxw/vim-jsx'
Plug 'morhetz/gruvbox'
Plug 'leafgarland/typescript-vim'
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
set number
set smartindent
set pastetoggle=<F2>
set backspace=2
set nospell

" Let's save undo info!
if !isdirectory($HOME."/.vim")
    call mkdir($HOME."/.vim", "", 0770)
endif
if !isdirectory($HOME."/.vim/undo-dir")
    call mkdir($HOME."/.vim/undo-dir", "", 0700)
endif
set undodir=~/.vim/undo-dir
set undofile

" set guifont=Menlo\ Bold:h16

nnoremap <leader>q :q!
map q: :q

let mapleader=","
let g:Powerline_symbols = 'fancy'
let g:ctrlp_working_path_mode = 'r'

autocmd BufRead,BufNewFile *.md,*.markdown set filetype=md autoread
autocmd BufRead,BufNewFile *.jade set filetype=jade autoread
autocmd BufRead,BufNewFile *.handlebars,*.hbs set filetype=html autoread
autocmd BufRead,BufNewFile *.json,*.gyp set filetype=javascript autoread
autocmd BufRead,BufNewFile *.php set filetype=php autoread
autocmd BufRead,BufNewFile *.etl set filetype=ruby autoread
autocmd BufRead,BufNewFile *.coffee set filetype=javascript autoread
autocmd BufRead,BufNewFile html set smartindent
autocmd BufRead,BufNewFile *.ts set filetype=typescript autoread

function! PhpSyntaxOverride()
  hi! def link phpDocTags  phpDefine
  hi! def link phpDocParam phpType
endfunction

augroup phpSyntaxOverride
  autocmd!
  autocmd FileType php call PhpSyntaxOverride()
augroup END
