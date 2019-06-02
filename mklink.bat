mklink %HOMEPATH%\.vimrc %HOMEPATH%\dotfiles\.vimrc
mklink %HOMEPATH%\.gvimrc %HOMEPATH%\dotfiles\.gvimrc
mklink /D %HOMEPATH%\vimfiles %HOMEPATH%\dotfiles\.vim

mklink /D %HOMEPATH%\AppData\Local\nvim %HOMEPATH%\dotfiles\.vim
mklink %HOMEPATH%\AppData\Local\nvim\init.vim %HOMEPATH%\dotfiles\.vimrc
mklink %HOMEPATH%\AppData\Local\nvim\ginit.vim %HOMEPATH%\dotfiles\.gvimrc
exit 0
