source ~/.config/nvim/general/settings.vim
source ~/.config/nvim/general/indent.vim
source ~/.config/nvim/general/python.vim
source ~/.config/nvim/general/mappings.vim

"Themes
"source ~/.config/nvim/themes/onedark.vim
"source ~/.config/nvim/themes/gruvbox.vim
"Plugins
source ~/.config/nvim/vim-plug/plugins.vim
colorscheme PaperColor

"Intellisense
source ~/.config/nvim/plug-config/coc.vim
"Don't forget to install extensions
":CocInstall coc-json coc-pyright coc-snippets coc-vimlsp coc-tsserver\
"coc-yaml coc-go coc-svelte coc-prettier
" There is a problem with coc-svelte, you should install :
"cd ~/.config/coc/extensions/node_modules/coc-svelte
"npm i -D typescript
"Airline
source ~/.config/nvim/themes/airline.vim
"Sneak
source ~/.config/nvim/plug-config/sneak.vim
"Floaterm
source ~/.config/nvim/plug-config/floaterm.vim
"Commenter
source ~/.config/nvim/plug-config/commenter.vim
"Fugitive
source ~/.config/nvim/plug-config/fugitive.vim

"Scripts
source ~/.config/nvim/scripts/floatermAutoload.vim
"session autoload should be at the end, because it loads 
"files and change to its folder so pwd is modified and
"floaterm is not initiated in the correct path
source ~/.config/nvim/scripts/sessionAutoload.vim
"Svelte
source ~/.config/nvim/plug-config/svelte.vim
