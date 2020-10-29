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
  " Status line
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  " vim-devicons (remember to install NerdFonts)
  Plug 'ryanoasis/vim-devicons'
  " FZF
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  " Goyo
  Plug 'junegunn/goyo.vim'
  " Vim-sneak
  Plug 'justinmk/vim-sneak'
  " NerdCommenter
  Plug 'preservim/nerdcommenter'
  " Floaterm
  Plug 'voldikss/vim-floaterm'
  " Fugitive
  Plug 'tpope/vim-fugitive'
  " Smooth scroll
  Plug 'psliwka/vim-smoothie'
  call plug#end()

