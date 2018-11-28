if &compatible
    set nocompatible
endif

let s:dein_dir = expand('~/.cache/.vim/dein')
let s:dein_repo_dir = expand('~/.cache/.vim/dein/repos/github.com/Shougo/dein.vim')

"let g:dein#types#git#default_protocol = "ssh"
if &runtimepath !~# 'dein.vim'
    if !isdirectory(s:dein_repo_dir)
        execute '!git clone https://github.com/Shougo/dein.vim.git' s:dein_repo_dir
        "execute '!git clone git@github.com:Shougo/dein.vim.git' s:dein_repo_dir
    endif
    execute 'set runtimepath^=' . s:dein_repo_dir
endif

" 設定開始
if dein#load_state(s:dein_dir)
  call dein#begin(s:dein_dir)

  " プラグインリストを収めた TOML ファイル
  " 予め TOML ファイル（後述）を用意しておく
  let g:rc_dir    = expand('~/dotfiles/.vim/init')
  let s:toml      = g:rc_dir . '/dein.toml'
  let s:lazy_toml = g:rc_dir . '/dein_lazy.toml'

  " TOML を読み込み、キャッシュしておく
  call dein#load_toml(s:toml,      {'lazy': 0})
  call dein#load_toml(s:lazy_toml, {'lazy': 1})

  " 設定終了
  call dein#end()
  call dein#save_state()
endif

if dein#check_install()
    call dein#install()
endif
