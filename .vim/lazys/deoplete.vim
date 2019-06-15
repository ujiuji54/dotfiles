" Vim起動時にdeopleteを有効にする
let g:deoplete#enable_at_startup = 1

" smartcase有効化. 大文字が入力されるまで大文字小文字の区別を無視する
let g:deoplete#enable_smart_case = 1

" 区切り文字まで補完する
let g:deoplete#enable_auto_delimiter = 1

" 1文字目の入力から補完のポップアップを表示
let g:deoplete#auto_completion_start_length = 1
let g:deoplete#auto_complete_delay = 0
let g:deoplete#auto_complete_start_length = 1
let g:deoplete#enable_camel_case = 0
let g:deoplete#enable_ignore_case = 0
let g:deoplete#enable_refresh_always = 0
let g:deoplete#file#enable_buffer_path = 1
let g:deoplete#max_list = 10000

inoremap <expr><tab> pumvisible() ? "\<C-n>" :
  \ neosnippet#expandable_or_jumpable() ?
  \    "\<Plug>(neosnippet_expand_or_jump)" : "\<tab>"
