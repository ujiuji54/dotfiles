if &compatible
    set nocompatible
endif

let s:dein_dir = expand('~/.cache/.vim/dein/repos/github.com/Shougo/dein.vim')
if &runtimepath !~# 'dein.vim'
    if !isdirectory(s:dein_dir)
        execute '!git clone https://github.com/Shougo/dein.vim' s:dein_dir
    endif
    execute 'set runtimepath^=' . s:dein_dir
endif

"set runtimepath+=~/dotfiles/.vim/dein/repos/github.com/Shougo/dein.vim
call dein#begin(expand('~/.cache/.vim/dein'))

call dein#add('Shougo/dein.vim')

call dein#add('Shougo/neocomplete.vim')
call dein#add('Shougo/neomru.vim')
call dein#add('Shougo/neosnippet')
call dein#add('Shougo/vimproc.vim')

call dein#add('mattn/emmet-vim') "HTML，CSS用ツール

call dein#add('tpope/vim-endwise') "rubyのend補完

call dein#end()

if dein#check_install()
    call dein#install()
endif