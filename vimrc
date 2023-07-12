" -------------------------------------------------------------
"  vim settings customization
" -------------------------------------------------------------
syntax enable           " enable syntax processing
filetype plugin on
set backspace=indent,eol,start
set history=500
set viminfo+=n$VIMRUNTIME/_viminfo

set tabstop=2           " space tab
set expandtab           " use spaces for tabs
set softtabstop=2       " space tab
set shiftwidth=2
set autoindent          " Set the indent as of previous line

" set textwidth=80 " lines longer than 80 chars get wrapped. Though, it will happen on space after 80
set colorcolumn=+1

set path+=** " set the path to current directory and all subdirectory. Useful for find. 

set showmatch
set incsearch
set hlsearch
set ignorecase
set smartcase
set infercase 

set re=0                " automatically select the regexpengine :help 're' to use latest engine

set number              " show line numbers
set showcmd             " show command in bottom bar
set ruler               " show the ruler to know which row and column you are on
set scrolloff=5         " number of lines to keep above cursor
set cursorline        " highlight current line
set wildmenu
set lazyredraw
set showmatch           " higlight matching parenthesis

set noswapfile          " Do not create swap file. Manage this in version control 
set nobackup            " Do not create backup file again manage in version control
set nowritebackup
set undodir=~/temp//    " setup the undodir at central place


" adjust buffer related
set hidden

" -------------------------------------------------------------
"  vim custom keybindings
" -------------------------------------------------------------
let mapleader=" "
" space space shortcut
nnoremap <leader><leader> :nohl<cr>
" saving
nnoremap <leader>w :w!<cr>
"  quit the file
nnoremap <leader>q :q<cr>
" escaping the inset mode
inoremap jk <Esc>
" reindent whole file (the good way)
" Thanks to AlexDeLarge for sharing this awesome way to reintend
nnoremap <leader>f mzgg=G`z
" copy and paste from system clipboard
noremap <leader>y "+y
noremap <leader>p "+p

" toggle relative and absolute numbering.
" nnoremap <F8> :set relativenumber!<cr>

" autocomplete the common things.
" inoremap (<cr> (<cr>)<esc>ko
" inoremap {<cr> {<cr>}<esc>ko
" inoremap [<cr> [<cr>]<esc>ko
" inoremap () ()
" inoremap [] []
" inoremap {} {}
" inoremap '' ''
" inoremap "" ""
" inoremap `` ``
" inoremap ( ()<Esc>i
" inoremap [ []<Esc>i
" inoremap { {}<Esc>i
" inoremap ' ''<Esc>i
" inoremap " ""<Esc>i
" inoremap ` ``<Esc>i

" -------------------------------------------------------------
"  vim custom action group
" -------------------------------------------------------------
augroup customfiletype 
  autocmd!
  " reload vimrc file on save. 
  autocmd BufWritePost .vimrc source %
augroup END


" -------------------------------------------------------------
" add theme
" -------------------------------------------------------------
packadd! sonokai
packadd! molokai
syntax enable
colorscheme molokai
" colorscheme molokai
