"nerdtree
map <C-n> :NERDTreeToggle<CR>

"neocomplete
inoremap <expr><BS> neocomplete#smart_close_popup()."<C-h>" " バックスペースで補完のポップアップを閉じる

imap <expr><TAB> pumvisible() ? "<C-n>" : neosnippet#jumpable() ? "<Plug>(neosnippet_expand_or_jump)" : "<TAB>" " タブキーで補完候補の選択. スニペット内のジャンプもタブキーでジャンプ

"denite
nnoremap <silent> ,ub :<C-u>Denite buffer<CR>
nnoremap <silent> ,uf :<C-u>DeniteWithBufferDir -buffer-name=files file<CR>
nnoremap <silent> ,ur :<C-u>Denite -buffer-name=register register<CR>
nnoremap <silent> ,uu :<C-u>Denite file_mru buffer<CR>
nnoremap <silent> ,ug :<c-u>Denite grep<cr>
map <C-p> :Denite file/rec<CR>
