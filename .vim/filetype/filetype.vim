augroup filetypedetect
    au BufRead, BufNewFile *.rb *.erb setfiletype ruby
    au BufRead, BufNewFile *.py setfiletype python
augroup END
