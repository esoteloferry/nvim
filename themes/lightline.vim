if !has('gui_running')
  set t_Co=256
endif
set laststatus=2
set noshowmode
let g:lightline = {
      \ 'colorscheme': 'PaperColor',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ], [ 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function':{
      \   'filename': 'LightlineFilename',
      \ },
      \ 'tabline': {
      \   'left': [ ['buffers'] ],
      \   'right': [ ['close'] ]
      \ },
      \ 'component_expand': {
      \   'buffers': 'lightline#bufferline#buffers'
      \ },
      \ 'component_type': {
      \   'buffers': 'tabsel'
      \ }
      \ }

function! LightlineFilename()
  return expand('%')
endfunction

nmap .1 <Plug>lightline#bufferline#go(1)
nmap .2 <Plug>lightline#bufferline#go(2)
nmap .3 <Plug>lightline#bufferline#go(3)
nmap .4 <Plug>lightline#bufferline#go(4)
nmap .5 <Plug>lightline#bufferline#go(5)
nmap .6 <Plug>lightline#bufferline#go(6)
nmap .7 <Plug>lightline#bufferline#go(7)
nmap .8 <Plug>lightline#bufferline#go(8)
nmap .9 <Plug>lightline#bufferline#go(9)
nmap .10 <Plug>lightline#bufferline#go(10)
nmap .11 <Plug>lightline#bufferline#go(11)
nmap .12 <Plug>lightline#bufferline#go(12)

" let g:lightline#bufferline#enable_nerdfont = 1
let g:lightline#bufferline#enable_devicons = 1

autocmd BufWritePost,TextChanged,TextChangedI * call lightline#update()
