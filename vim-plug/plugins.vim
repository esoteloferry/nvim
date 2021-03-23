call plug#begin('~/.config/nvim/autoload/plugged')
  " Better Syntax Support
  "Plug 'sheerun/vim-polyglot'
  " File Explorer
  "Plug 'scrooloose/NERDTree'
  " Auto pairs for '(' '[' '{'
  Plug 'jiangmiao/auto-pairs'
  " Intellisense
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  " Themes
  Plug 'joshdick/onedark.vim'
  Plug 'morhetz/gruvbox'
  Plug 'NLKNguyen/papercolor-theme'
  " Status line
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  " vim-devicons (remember to install NerdFonts)
  Plug 'ryanoasis/vim-devicons'
  " FZF
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  " Vim-sneak
  Plug 'justinmk/vim-sneak'
  " NerdCommenter
  Plug 'Shougo/context_filetype.vim'
  Plug 'preservim/nerdcommenter'
  " Floaterm
  Plug 'voldikss/vim-floaterm'
  " Fugitive
  Plug 'tpope/vim-fugitive'
  " Smooth scroll
  Plug 'psliwka/vim-smoothie'
  " Svelte
  Plug 'leafOfTree/vim-svelte-plugin'
  Plug 'codechips/coc-svelte', {'do':'npm install'}
  "Prettier
  " Plug 'prettier/vim-prettier', {
  "   \ 'do': 'npm install'
  "   \ }
  call plug#end()

