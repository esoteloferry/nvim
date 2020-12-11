filetype plugin indent on
"filetype off

autocmd FileType javascript setlocal expandtab tabstop=2 shiftwidth=2
autocmd FileType typescript setlocal expandtab tabstop=2 shiftwidth=2
autocmd FileType python setlocal expandtab tabstop=4 shiftwidth=4
autocmd FileType sh setlocal expandtab tabstop=4 shiftwidth=4

set foldmethod=indent
autocmd FileType go setlocal foldmethod=indent
autocmd FileType typescript setlocal foldmethod=indent

