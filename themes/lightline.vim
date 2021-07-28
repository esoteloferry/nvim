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
autocmd BufWritePost,TextChanged,TextChangedI * call lightline#update()
