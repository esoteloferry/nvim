nmap <Leader>c :vertical rightbelow Git<CR>:vertical resize 70<CR>
" To close git and diffsplit all at once , there is an issue when closing
" diffsplit with :bd is that after the file old is opened (this happens with
" dv when used from :Git)
nmap <Leader>cg <C-w><C-o>
nmap <Leader>d :Gvdiffsplit<CR>


"When using Ggrep
nmap <Leader>r :cprev<CR>
nmap <Leader>m :cnext<CR>
