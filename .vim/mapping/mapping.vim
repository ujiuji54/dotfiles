"nerdtree
map <C-n> :NERDTreeToggle<CR>

"deoplete
inoremap <expr><BS> deoplete#smart_close_popup()."<C-h>" " バックスペースで補完のポップアップを閉じる

imap <expr><TAB> pumvisible() ? "<C-n>" : neosnippet#jumpable() ? "<Plug>(neosnippet_expand_or_jump)" : "<TAB>" " タブキーで補完候補の選択. スニペット内のジャンプもタブキーでジャンプ
