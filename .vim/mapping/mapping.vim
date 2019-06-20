"US keyboard
nnoremap ; :
nnoremap : ;

inoremap <C-h> <Left>
inoremap <C-l> <Right>

"nerdtree
nnoremap <C-n> :NERDTreeToggle<CR>

"tabpage
imap <expr><TAB> pumvisible() ? "<C-n>" : neosnippet#jumpable() ? "<Plug>(neosnippet_expand_or_jump)" : "<TAB>" " タブキーで補完候補の選択. スニペット内のジャンプもタブキーでジャンプ

"terminal
nnoremap ,t :terminal<CR>
tnoremap <silent> <ESC> <C-\><C-n>
