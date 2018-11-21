runtime! init/*.vim
runtime! filetype/*.vim
runtime! mapping/*.vim
runtime! settings/*.vim
filetype plugin indent on

set encoding=utf-8
scriptencoding utf-8
set fileformat=unix
set number

set expandtab
set tabstop=2
set shiftwidth=2
set autoindent
set smartindent

set ignorecase
set smartcase

set wildmenu

set noundofile
set nobackup

autocmd BufWritePre * :%s/\s\+$//ge
