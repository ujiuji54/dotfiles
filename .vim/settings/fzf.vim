nnoremap <C-p> :FZFFileList<CR>
command! FZFFileList call fzf#run(fzf#wrap({
            \ 'source': 'find . -type d -name .git -prune -o ! -name .DS_Store',
            \ 'down': '40%'}))

nnoremap <C-b> :Buffers<CR>
nnoremap <silent> <C-]> :call fzf#vim#tags(expand('<cword>'))<CR>

let g:fzf_buffers_jump = 1
