" enable tabline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#right_sep = ' '
let g:airline#extensions#tabline#right_alt_sep = '|'

let g:airline#extensions#tabline#formatter = 'unique_tail'
" enable powerline fonts
let g:airline_powerline_fonts = 1
" let g:airline_left_sep = ''
" let g:airline_right_sep = ''

" Switch to your current theme
let g:airline_theme = 'onedark'
" Always show tabs
set showtabline=2

" We don't need to see things like -- INSERT -- anymore
set noshowmode

" function! AirlineInit()
"   let g:airline_section_a = airline#section#create(['mode', ' ', 'branch'])
"   let g:airline_section_b = airline#section#create_left(['ffenc', 'hunks', '%f'])
"   let g:airline_section_c = airline#section#create(['filetype'])
"   let g:airline_section_x = airline#section#create(['%P'])
"   let g:airline_section_y = airline#section#create(['%B'])
"   let g:airline_section_z = airline#section#create_right(['%l'])
" endfunction
" autocmd VimEnter * call AirlineInit()
