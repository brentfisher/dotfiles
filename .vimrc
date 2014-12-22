" Bundle Support {
	set nocompatible
	filetype off

	set rtp+=~/.vim/bundle/vundle/
    call vundle#rc()
" }
" Bundles {

    " Use local bundles if available {
        if filereadable(expand("~/.vimrc.bundles"))
            source ~/.vimrc.bundles
        endif
    " }
  
    filetype plugin indent on     " required for bundles!
    set noswapfile
    "Ctrlp
    let g:ctrlp_working_path_mode = 'r'
    " let g:ctrlp_custom_ignore = {
    "       \ 'dir': '\node_modules/'
    "       \ }
    set wildignore+=*/tmp/*,*/node_modules/*
    "end Ctrlp
    set autoread
    set viewoptions=folds,options,cursor,unix,slash   
    set tabstop=2
    set shiftwidth=2
    set softtabstop=2
    set shiftround
    set expandtab
    set relativenumber 
    syntax on
    set number
    set smartindent
    let mapleader=","
    nnoremap <leader>q :q!
    let g:Powerline_symbols = 'fancy'
" }

augroup filetype_json
  autocmd!
  autocmd FileType json set equalprg=json_reformat
augroup END

autocmd BufRead,BufNewFile *.md,*.markdown set filetype=md autoread
autocmd BufRead,BufNewFile *.jade set filetype=jade autoread
autocmd BufRead,BufNewFile *.handlebars set filetype=html autoread
autocmd BufRead,BufNewFile *.json,*.gyp set filetype=javascript autoread
autocmd BufRead,BufNewFile html set smartindent

syntax enable
"colorscheme Monokai
colorscheme gruvbox
set background=dark

if has('gui_running')
set guioptions-=T           " Remove the toolbar
set lines=40                " 40 lines of text instead of 24
set background=dark
set guifont=Menlo\ Regular\ for\ Powerline:h14
" cal SetSyn("javascript2") 
endif
" } 
