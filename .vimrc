function! Save()
  call VimuxRunCommand("./save")
endfunction

function! Prepare()
  sort
  %s/\s\+$//e
endfunction

autocmd! BufReadPost  today.md :Goyo
autocmd! BufWritePre  today.md :call Prepare()
autocmd! BufWritePost today.md :call Save()

" Mark as Done or not Done or Skipped
nnoremap <leader>+   V:s/\[\ \]/[+]/<cr>:w<cr>
nnoremap <leader>x   V:s/\[\ \]/[X]/<cr>:w<cr>
nnoremap <leader>z   V:s/\[\X\]/[ ]/<cr>:w<cr>
nnoremap <leader>-   V:s/\[\ \]/[-]/<cr>:w<cr>
nnoremap <leader>o   o- [ ]
