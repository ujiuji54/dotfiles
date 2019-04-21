runtime! init/*.vim
runtime! filetype/*.vim
runtime! mapping/*.vim
runtime! settings/*.vim
runtime! colors/*.vim
filetype plugin indent on

set encoding=utf-8
scriptencoding utf-8
set fileformat=unix
setlocal ff=unix
set number
set clipboard+=unnamed

set expandtab
set tabstop=2
set shiftwidth=2
set autoindent
set smartindent
syntax on
colorscheme molokai

set ignorecase
set smartcase

set wildmenu

set noundofile
set nobackup

augroup save
  autocmd BufWritePre * :%s/\s\+$//ge
augroup END
