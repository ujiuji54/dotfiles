"US keyboard
nnoremap ; :
nnoremap : ;

"nerdtree
map <C-n> :NERDTreeToggle<CR>

"deoplete
inoremap <expr><BS> deoplete#smart_close_popup()."<C-h>" " バックスペースで補完のポップアップを閉じる

imap <expr><TAB> pumvisible() ? "<C-n>" : neosnippet#jumpable() ? "<Plug>(neosnippet_expand_or_jump)" : "<TAB>" " タブキーで補完候補の選択. スニペット内のジャンプもタブキーでジャンプ

"denite
nnoremap <silent> ,f :<C-u>DeniteWithBufferDir -buffer-name=files file<CR>
nnoremap <silent> ,r :<C-u>Denite -buffer-name=register register<CR>
nnoremap <silent> ,u :<C-u>Denite file_mru buffer<CR>
nnoremap <silent> ,g :<c-u>Denite grep<cr>
map <C-b> :Denite buffer<CR>
map <C-p> :Denite file/rec<CR>
