augroup filetypedetect
    au BufRead, BufNewFile *.rb *.erb *.slim setfiletype ruby
    au BufRead, BufNewFile *.py setfiletype python
augroup END
