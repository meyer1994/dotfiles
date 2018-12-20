" do not try to be compatible with vi
set nocompatible

" syntax highlight
set syntax=ON

" filetype
filetype plugin on

" add shell
set shell=bash

" line numbers
set number

" eanble mouse usage, scroll and clicks
set mouse=a

" add line to column 80
set colorcolumn=80
" set color to be light grey
highlight ColorColumn ctermbg=lightgrey

" break lines at word
set wrap
set linebreak
set nolist
set showbreak=+++

" highlight matching brace
set showmatch

" no beeping
set visualbell
 
" highlight search results
set hlsearch
" smart case search
set smartcase
" case insensitive
set ignorecase
set incsearch
 
" auto indent new lines
set autoindent
set smartindent
set smarttab
 
" show cursor coordinates
set ruler
 
" highlight current cursor line
set cursorline
highlight CursorLine cterm=bold ctermbg=black

set undolevels=1000
set backspace=indent,eol,start


" vim-plugin plugin manager part
" write 'Plug <your plugin>' here to add plugins, then call :PluginInstall
call plug#begin('~/.vim/plugged')

    " auto completion
    Plug 'Shougo/deoplete.nvim'

    " auto brackets, braces etc completion
    Plug 'raimondi/delimitmate'

    " indentation guides
    Plug 'yggdroot/indentline'

call plug#end()

" Use deoplete.
let g:deoplete#enable_at_startup = 1
inoremap <silent><expr> <TAB>
    \ pumvisible() ? "\<C-n>" :
    \ <SID>check_back_space() ? "\<TAB>" :
    \ deoplete#mappings#manual_complete()
    function! s:check_back_space() abort "{{{
        let col = col('.') - 1
        return !col || getline('.')[col - 1]  =~ '\s'
        endfunction"}}}
