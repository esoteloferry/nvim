"let leader key
let g:mapleader =","

" Use alt + hjkl to resize windows
nnoremap <M-j>    :resize -2<CR>
nnoremap <M-k>    :resize +2<CR>
nnoremap <M-h>    :vertical resize -2<CR>
nnoremap <M-l>    :vertical resize +2<CR>
" TAB in general mode will move to text buffer
nnoremap <TAB> :bnext<CR>
" SHIFT-TAB will go back
nnoremap <S-TAB> :bprevious<CR>
" Better tabbing
vnoremap < <gv
vnoremap > >gv
" Move selected region
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '>-2<CR>gv=gv
" Better window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
" Termimal mappings
tnoremap <Esc> <C-\><C-n>
"Alternate way to save
noremap <Leader>s :w<CR>
noremap <Leader>w :bd<CR>
noremap <Leader>q :q<CR>
noremap <Leader>qq :qa<CR>
noremap <silent> <Leader>g :GFiles<CR>
" Folding
nnoremap <silent> <Space> @=(foldlevel('.')?'za':"\<Space>")<CR>
"Fold/unfold everything in current class
nnoremap <silent> <Space><Space> zA
nnoremap <silent> <Space>r zr
nnoremap <silent> <Space>m zm
" Test & run any code (for that tetrun is a bash containing the commands you
" use to test, or test and run, or just run the code you are working on)
nnoremap <Leader>, :FloatermToggle<CR>./testrun.sh<CR>
" Close all other buffers
" noremap <Leader>o :w\|%bd\|e#<CR>
noremap <silent><Leader>o :w\|%bd\|e#\|bd#\|normal `"<CR>

" Shortcut to vsplit
nnoremap <Leader>v :vs<CR>
