set nocompatible
set noswapfile
call plug#begin('~/.vim/plugged')
Plug 'tomtom/tcomment_vim'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-fugitive'
Plug 'kien/ctrlp.vim'
Plug 'godlygeek/tabular'
Plug 'vim-ruby/vim-ruby'
Plug 'vim-airline/vim-airline'
Plug 'https://github.com/scrooloose/nerdtree.git'
Plug 'tomtom/tlib_vim'
Plug 'pangloss/vim-javascript'
Plug 'flazz/vim-colorschemes'
Plug 'digitaltoad/vim-jade'
Plug 'StanAngeloff/php.vim'
Plug 'mxw/vim-jsx'
Plug 'morhetz/gruvbox'
Plug 'leafgarland/typescript-vim'
Plug 'github/copilot.vim'
Plug 'hashivim/vim-terraform'
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
set backspace=2
set nospell

"let g:copilot_node_command = "/Users/bfisher/.nvm/versions/node/v20.19.2/bin/node"
let g:copilot_enabled = 1
" Disable default Tab mapping
let g:copilot_no_tab_map = v:true

" Use Ctrl-J to accept Copilot suggestion
imap <silent><script><expr> <C-J> copilot#Accept("\<CR>")

let g:airline#extensions#tabline#enabled = 1


" Let's save undo info!
" set undodir=~/.config/nvim/undo
set undofile
" set guifont=Menlo\ Bold:h16

nnoremap <leader>q :q!
map q: :q

let mapleader=","
let g:Powerline_symbols = 'fancy'
let g:ctrlp_working_path_mode = 'r'
" Make adjusing split sizes a bit more friendly
noremap <silent> <C-Left> :vertical resize +3<CR>
noremap <silent> <C-Right> :vertical resize -3<CR>
noremap <silent> <C-Up> :resize +3<CR>
noremap <silent> <C-Down> :resize -3<CR>

autocmd BufRead,BufNewFile *.md,*.markdown set filetype=md autoread
autocmd BufRead,BufNewFile *.jade set filetype=jade autoread
autocmd BufRead,BufNewFile *.handlebars,*.hbs set filetype=html autoread
autocmd BufRead,BufNewFile *.json,*.gyp set filetype=javascript autoread
autocmd BufRead,BufNewFile *.php set filetype=php autoread
autocmd BufRead,BufNewFile *.etl set filetype=ruby autoread
autocmd BufRead,BufNewFile *.coffee set filetype=javascript autoread
autocmd BufRead,BufNewFile html set smartindent
autocmd BufRead,BufNewFile *.ts set filetype=typescript autoread
autocmd BufRead,BufNewFile *.hql set filetype=sql autoread
autocmd BufRead,BufNewFile Jenkinsfile set filetype=javascript autoread
" #autocmd BufRead,BufNewFile *.tf set filetype=sh autoread

function! PhpSyntaxOverride()
  hi! def link phpDocTags  phpDefine
  hi! def link phpDocParam phpType
endfunction

augroup phpSyntaxOverride
  autocmd!
  autocmd FileType php call PhpSyntaxOverride()
augroup END
