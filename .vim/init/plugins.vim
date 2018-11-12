if &compatible
    set nocompatible
endif
let g:dein#types#git#default_protocol = "ssh"

let s:dein_dir = expand('~/.cache/.vim/dein/repos/github.com/Shougo/dein.vim')
if &runtimepath !~# 'dein.vim'
    if !isdirectory(s:dein_dir)
        execute '!git clone git@github.com:Shougo/dein.vim.git' s:dein_dir
    endif
    execute 'set runtimepath^=' . s:dein_dir
endif

"set runtimepath+=~/dotfiles/.vim/dein/repos/github.com/Shougo/dein.vim
call dein#begin(expand('~/.cache/.vim/dein'))

call dein#add('Shougo/dein.vim')

call dein#add('Shougo/neocomplete.vim')
call dein#add('Shougo/neomru.vim')
call dein#add('Shougo/neosnippet')
call dein#add('Shougo/neosnippet-snippets')
if isdirectory(expand('~/.cache/neocomplete'))
    let g:neosnippet#snippets_directory = "$HOME/.vim/snippets/"
    " Vim起動時にneocompleteを有効にする
    let g:neocomplete#enable_at_startup = 1
    " smartcase有効化. 大文字が入力されるまで大文字小文字の区別を無視する
    let g:neocomplete#enable_smart_case = 1
    " 3文字以上の単語に対して補完を有効にする
    let g:neocomplete#min_keyword_length = 3
    " 区切り文字まで補完する
    let g:neocomplete#enable_auto_delimiter = 1
    " 1文字目の入力から補完のポップアップを表示
    let g:neocomplete#auto_completion_start_length = 1
    " バックスペースで補完のポップアップを閉じる
    inoremap <expr><BS> neocomplete#smart_close_popup()."<C-h>"
    " タブキーで補完候補の選択. スニペット内のジャンプもタブキーでジャンプ
    imap <expr><TAB> pumvisible() ? "<C-n>" : neosnippet#jumpable() ? "<Plug>(neosnippet_expand_or_jump)" : "<TAB>"
endif

call dein#add('Shougo/vimproc.vim')

call dein#add('mattn/emmet-vim') "HTML，CSS用ツール

call dein#add('tpope/vim-endwise') "rubyのend補完

call dein#end()

if dein#check_install()
    call dein#install()
endif
