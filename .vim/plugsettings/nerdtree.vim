let NERDTreeShowHidden = 1 "隠しファイル表示

if !argc() "vim起動時にファイル指定がない場合
    autocmd vimenter * NERDTree "NERDTree起動
endif
