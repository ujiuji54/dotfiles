"nerdtree
map <C-n> :NERDTreeToggle<CR>

"deoplete
inoremap <expr><BS> deoplete#smart_close_popup()."<C-h>" " バックスペースで補完のポップアップを閉じる

imap <expr><TAB> pumvisible() ? "<C-n>" : neosnippet#jumpable() ? "<Plug>(neosnippet_expand_or_jump)" : "<TAB>" " タブキーで補完候補の選択. スニペット内のジャンプもタブキーでジャンプ

"denite
nnoremap <silent> ,f :<C-u>DeniteWithBufferDir -buffer-name=files file<CR>
nnoremap <silent> ,r :<C-u>Denite -buffer-name=register register<CR>
nnoremap <silent> ,u :<C-u>Denite file_mru buffer<CR>
nnoremap <C-g> :<C-u>Denite grep<cr>
nnoremap <C-b> :<C-u>Denite buffer<CR>
nnoremap <C-p> :<C-u>Denite file/rec<CR>

autocmd FileType denite call s:denite_my_settings()
function! s:denite_my_settings() abort
  nnoremap <silent><buffer><expr> <CR>
  \ denite#do_map('do_action')
  nnoremap <silent><buffer><expr> d
  \ denite#do_map('do_action', 'delete')
  nnoremap <silent><buffer><expr> p
  \ denite#do_map('do_action', 'preview')
  nnoremap <silent><buffer><expr> q
  \ denite#do_map('quit')
  nnoremap <silent><buffer><expr> i
  \ denite#do_map('open_filter_buffer')
  nnoremap <silent><buffer><expr> <Space>
  \ denite#do_map('toggle_select').'j'
endfunction

autocmd FileType denite-filter call s:denite_filter_my_setting()
function! s:denite_filter_my_setting() abort
  inoremap <silent><buffer><expr> <CR> denite#do_map('do_action')
  " 一つ上のディレクトリを開き直す
  inoremap <silent><buffer><expr> <BS> denite#do_map('move_up_path')
  " Denite を閉じる
  inoremap <silent><buffer><expr> <C-c> denite#do_map('quit')
  nnoremap <silent><buffer><expr> <C-c> denite#do_map('quit')
endfunction
