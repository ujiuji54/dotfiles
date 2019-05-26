" Vim起動時にdeopleteを有効にする
let g:deoplete#enable_at_startup = 1

" smartcase有効化. 大文字が入力されるまで大文字小文字の区別を無視する
let g:deoplete#enable_smart_case = 1

" 3文字以上の単語に対して補完を有効にする
" let g:deoplete#min_keyword_length = 2

" 区切り文字まで補完する
let g:deoplete#enable_auto_delimiter = 1

" 1文字目の入力から補完のポップアップを表示
let g:deoplete#auto_completion_start_length = 1

inoremap <expr><tab> pumvisible() ? "\<C-n>" :
  \ neosnippet#expandable_or_jumpable() ?
  \    "\<Plug>(neosnippet_expand_or_jump)" : "\<tab>"
