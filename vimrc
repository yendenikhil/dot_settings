set nocompatible        " to make sure to use in vim and not in vi
syntax enable           " enable syntax processing
set backspace=indent,eol,start
set clipboard=unnamed
set history=500

set tabstop=2           " space tab
set expandtab           " use spaces for tabs
set softtabstop=2       " space tab
set shiftwidth=4
set modelines=1

filetype indent on
filetype plugin on

set autoindent          " Set the indent as of previous line
set smartindent         " Try to guess indent of next line 

set number              " show line numbers
set showcmd             " show command in bottom bar
" set cursorline        " highlight current line
set wildmenu
set lazyredraw
set showmatch           " higlight matching parenthesis
set fillchars+=vert:┃

set foldmethod=indent   " fold based on indent level
set foldnestmax=10      " max 10 depth
set foldenable          " don't fold files by default on open
set foldlevelstart=10   " start with fold level of 1

let mapleader=" "
" saving
nnoremap <leader>w :w!<cr>
"  uit the file
nnoremap <leader>q :q<cr>
" escaping the inset mode
inoremap jk <Esc>
" reindent whole file (the good way)
" Thanks to AlexDeLarge for sharing this awesome way to reintend
nnoremap <leader>f mzgg=G`z

" autocomplete the common things.
inoremap () ()
inoremap [] []
inoremap {} {}
inoremap '' ''
inoremap "" ""
inoremap `` ``
inoremap ( ()<Esc>i
inoremap [ []<Esc>i
inoremap { {}<Esc>i
inoremap ' ''<Esc>i
inoremap " ""<Esc>i
inoremap ` ``<Esc>i

set noswapfile          " Do not create swap file. Manage this in version control 
set nobackup            " Do not create backup file again manage in version control
set undodir=~/temp//    " setup the undodir at central place

" Setting up the numbers to hybrid and when go to insert mode make it absolute
augroup numbertoggle 
    autocmd! 
    autocmd VimEnter,InsertLeave * set relativenumber 
    autocmd InsertEnter * set norelativenumber 
augroup END